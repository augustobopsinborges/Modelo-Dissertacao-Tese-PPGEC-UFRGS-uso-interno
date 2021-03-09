% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	CLASSE ppgec.cls 
%  -----------------
%
%	Neste arquivo você pode customizar as configurações da classe que governam
%	toda a formatação do documento.
%
%	Creditos
%   --------
%
%		Autores:	Augusto Bopsin Borges (augusto.borges@ufrgs.br)
%					Rodrigo Escolante Pereira (rodrigoescolante@gmail.com)
%					Felipe Pinto da Motta Quevedo (00152604@ufrgs.br)
%	
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Pacotes utilizandos na classe ppgec.cls
%	---------------------------------------
%
%		abntex2cite [alf,abnt-emphasize=bf, abnt-repeated-author-omit=yes]
%		amssymb,amsmath,amsfonts,textcomp,bm
%		array
%		backref [brazilian,hyperpageref]
%		booktabs
%		caption [brazilian,hyperpageref]
%		color
%		etoolbox
%		fancyhdr
%		fontenc [T1]
%		footnote
%		graphicx
%		ifthen
%		indentfirst
%		inputenc [utf8]
%		lipsum
%		longtable
%		lscape
%		mathptmx
%		microtype
%		pdfpages
%		times
%		tocloft
%		xstring
%		xurl
%
%		Para informações sobre os pacotes:
%		https://www.ctan.org/
%	
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Opções da classe ppgec.cls
%	--------------------------
%
%		Essa classe utiliza como base a classe abnTex2.cls v-1.9.7 laurocesar
% 		Copyright 2012-2018 by abnTeX2 group at https://www.abntex.net.br/ 
%		
%		Por padrao a classe ppgec.cls esta configurada para tese, dissertações e
% 		qualificações com folha A4, tamanho de fonte 12pt e configuracao de impressao
%		em apenas um lado da folha. Ao usuário, porém, estao disponiveis algumas 
%		opções deconfiguração:
%
%		TIPO DE DOCUMENTO
%			doutorado 	: opção para tese de doutorado
%			mestrado 	: opção para dissertação de mestrado
%			qdoutorado 	: opção para qualificação de doutorado
%			qmestrado 	: opção para qualificação de mestrado
%
%		AREA DE CONCENTRAÇÃO
%			estrutura 	: opção para área de concentração em estrutura
%			geotecnia 	: opção para área de concentração em geotecnia
%
%		LINGUA
%			pt			: português
%			en			: inglês
%			sp			: espanhol
%
%		Preencha o arquivo dados.tex com os teus dados.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
%
% 	Definição da classe PPGEC
%	--------------------------
%
%  
% Selecionando a versão LaTex para a classe de trabalho
\NeedsTeXFormat{LaTeX2e}
%
% Identificando essa classe e dando informações
\ProvidesClass{ppgec}[2021/01/13 v1.0 Modelo PPGEC/UFRGS baseado em abnTeX2]
%
% Declarando opções da classe
\DeclareOption{doutorado}{\newcommand{\vardoctype}{0}}
\DeclareOption{mestrado}{\newcommand{\vardoctype}{1}}
\DeclareOption{qdoutorado}{\newcommand{\vardoctype}{2}}
\DeclareOption{qmestrado}{\newcommand{\vardoctype}{3}}
\DeclareOption{estrutura}{\newcommand{\vararea}{0}}
\DeclareOption{geotecnia}{\newcommand{\vararea}{1}}
\DeclareOption{pt}{\newcommand{\varlingua}{0}}
\DeclareOption{sp}{\newcommand{\varlingua}{1}}
\DeclareOption{en}{\newcommand{\varlingua}{2}}
%
% Permite utilizar apenas as opções declaradas acima
%\DeclareOption*{\OptionNotUsed}
%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{abntex2}%
}
%
% Processando as opções da classe
\ProcessOptions\relax
%
% Carregando algumas opções da classe abntex2
\LoadClass[
	a4paper,						% tamanho do papel
	12pt,							% tamanho da fonte
	openright,						% capítulos começam na página à direita 
	oneside,						% impressão em apenas um lado da folha
	sumario = tradicional,			% opção de sumário
	chapter=TITLE,					% títulos de capítulos em letras maiúsculas
	section=TITLE,					% títulos de seções em letras maiúsculas
	%english,						% idioma adicional para hifenização
	%french,						% idioma adicional para hifenização
	%spanish,						% idioma adicional para hifenização
	brazil							% o último idioma é o principal do documento
]{abntex2}
% 
% Verifica se o \vardoctype foi definido
\@ifundefined{vardoctype}
{\ClassError{ppgec}
	{Faltou a opção de classe referente ao tipo de documento: doutorado, mestrado, qdoutorado e qmestrado}{}}
{}
% 
% Verifica se o \vararea foi definido
\@ifundefined{vararea}
{\ClassError{ppgec}
	{Faltou a opção de classe referente a área de concentração: estrutura ou geotecnia}{}}
{}
% 
% Verifica se o \varlingua foi definido
\@ifundefined{varlingua}
{\ClassError{ppgec}
	{Faltou a opção de classe referente a língua: pt,sp ou en}{}}
{}
%
% Carregando pacotes para a classe utilizar (https://www.ctan.org/)
\RequirePackage[brazilian,hyperpageref]{backref}									% faz hiper-referencias da bibliografia
\RequirePackage[alf,abnt-emphasize=bf,abnt-repeated-author-omit=yes, abnt-etal-list=0]{abntex2cite}	% citações padrão ABNT do projeto abntex2
\RequirePackage{amssymb,amsmath,amsfonts,textcomp,bm}								% recursos para matemática
\RequirePackage{array}				% elementos extras para formatação de tabelas
\RequirePackage{booktabs}			% melhora a qualidade das tabelas com comandos extras
\RequirePackage[skip=1pt]{caption}	% personalização de legenda em ambientes flutuantes
\RequirePackage{color}			    % controle das cores
\RequirePackage{etoolbox}			% pacotes para comandos de listas
\RequirePackage{fancyhdr}			% recursos para construçãod e cabeçalhos e rodapés
\RequirePackage[T1]{fontenc}		% codifica caracters acentuados na compilacao
\RequirePackage{footnote}			% lidar com notas de rodapé em diversas situações
\RequirePackage{graphicx}		    % inclusão de gráficos
\RequirePackage{ifthen}				% funções de programação
\RequirePackage{indentfirst}	  	% indenta o primeiro parágrafo de cada seção
\RequirePackage[utf8]{inputenc}		% permite inserir acentos no texto de entrada
\RequirePackage{lipsum}				% para geração de dummy text
\RequirePackage{longtable}			% para criar tabelas maiores que uma página
\RequirePackage{lscape}				% para fazer tabelas e figuras como landscape
\RequirePackage{mathptmx}         	% times Roman como fonte padrão de equações
\RequirePackage{microtype} 		  	% para melhorias de justificação
\RequirePackage{pdfpages}			% permite incluir documentos PDF em LaTex	
\RequirePackage{times}		  	   	% times Roman como fonte padrão text
\RequirePackage{tocloft}			% controla tipografia de listas de figuras e tabelas
\RequirePackage{xstring}			% funções de comparação de string
\RequirePackage{xurl}				% permite quebrar a linha em urls
\RequirePackage[a4paper,left=3cm,top=3cm,right=2cm,bottom=2cm,textheight=29.2cm]{geometry}
%
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Organização de pastas
%	---------------------
%
\graphicspath{{./fig/}}				% pasta que contem as figuras
\newcommand{\pathpre}{./pre/}		% pasta que contém elementos pre-textuais									 
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Configurações de aparência do PDF final
%	---------------------------------------
%
% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}
%
% informações do PDF
\makeatletter
\hypersetup{
	%pagebackref=true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfsubject={\imprimirpreambulo},
	pdfcreator={LaTeX with abnTeX2},
	pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico},
	colorlinks=true,       		% false: boxed links; true: colored links
	linkcolor=black,       		% color of internal links
	citecolor=black,     		% color of links to bibliography
	filecolor=black,     		% color of file links
	urlcolor=black,
	bookmarksdepth=4
}
\makeatother
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Comandos para definição de fontes e tamanhos
%	--------------------------------------------
%
% Número de níveis do sumário
\settocdepth{subsubsection}
%
% Espaçamento itens do sumário
\setlength{\cftbeforesubsectionskip}{6pt}
\setlength{\cftbeforesectionskip}{12pt}
\setlength{\cftbeforesubsubsectionskip}{0pt}
\setlength{\cftbeforechapterskip}{24pt}
%
%
% Identação do sumário
\cftsetindents{chapter}{0em}{\cftchapternumwidth+0.5em}
\cftsetindents{section}{\cftchapternumwidth}{\cftsectionnumwidth+0.5em}
\cftsetindents{subsection}{\cftchapternumwidth+\cftsectionnumwidth}{\cftsubsectionnumwidth+0.5em}
\cftsetindents{subsubsection}{\cftchapternumwidth+\cftsectionnumwidth+\cftsubsectionnumwidth}{\cftsubsubsectionnumwidth+0.25em}
%
% Ajusta o separatores do sumário
\renewcommand{\cftdotsep}{4.5}
%
% Inclui separadores nas entradas do apêndice e anexos no sumário
\renewcommand{\cftpartdotsep}{\cftdotsep}
%
% Deixa o tamanho do número da página dos anexos e apêndices iguais às outras entradas
\renewcommand{\cftpartpagefont}{\normalsize}
%
% Fontes dos itens no sumário
\renewcommand{\cftchapterfont}{\large \bfseries}
\renewcommand{\cftsectionfont}{\normalfont \large}
\renewcommand{\cftsubsectionfont}{\normalfont \large}
\renewcommand{\cftsubsubsectionfont}{\normalfont}
%
%
% Título dos Capítulos em caixa alta no sumário
\makeatletter
\settocpreprocessor{part}{%
	\let\tempf@rtoc\f@rtoc%
	\def\f@rtoc{%
		\texorpdfstring{\MakeTextUppercase{%
				\tempf@rtoc}%
		}{\tempf@rtoc}%
	}% 
}
\settocpreprocessor{chapter}{%
	\let\tempf@rtoc\f@rtoc% 
	\def\f@rtoc{%
		\texorpdfstring{\MakeTextUppercase{%
				\tempf@rtoc}%
		}{\tempf@rtoc}%
	}% 
}
\makeatother
%
% Título da Seção em caixa alta no sumário
\makeatletter
\let\oldcontentsline\contentsline
\def\contentsline#1#2{%
	\expandafter\ifx\csname l@#1\endcsname\l@section %
	\expandafter\@firstoftwo %
	\else %
	\expandafter\@secondoftwo %
	\fi %
	{%
		\oldcontentsline{#1}{\MakeTextUppercase{#2}}%
	}{%
		\oldcontentsline{#1}{#2}%
	}%
}
\makeatother
%
% Estilos alínea e subalíneas PPGEC
\setlist[alineas,1]{label={\alph*)},topsep=6pt, itemsep=6pt,leftmargin=\parindent+2cm}%
%
%
% Lista de figuras e tabelas com número do capítulo
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}

%Melhora o espaçamento da numeração na lista de figuras e tabelas
\setlength{\cftfigurenumwidth}{3em}
\setlength{\cfttablenumwidth}{3em}

%
% Redefine fonte e tamanho dos títulos de Capítulos e Seções
\renewcommand{\ABNTEXchapterfont}{\fontfamily{ptm}\fontseries{b}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\large}
\renewcommand{\ABNTEXsectionfont}{\fontfamily{ptm}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\large}
%
% Espaçamento entre título e texto
\setlength\beforechapskip{12pt+3pt}
\setlength\afterchapskip{24pt-6pt}
\setlength\beforesecskip{24pt+12pt}
\setlength\aftersecskip{12pt+6pt}
\setlength\beforesubsecskip{6pt+\onelineskip-2pt}
\setlength\aftersubsecskip{6pt+4pt}
\setlength\beforesubsubsecskip{6pt+\onelineskip}
\setlength\aftersubsubsecskip{6pt+3pt}
%
% Espaçamento listas de figuras e tabelas
\setlength\cftbeforefigureskip{12pt}
\setlength\cftbeforetableskip{12pt}
%
% Outras formatações
\setlength{\parindent}{0cm}			% tamanho da identação
\setlength{\parskip}{12pt+3pt} 	% espaçamento entre parágrafos
\captionsetup{width=0.75\textwidth} % padroniza largura da legenda das figuras e tabelas
%
% Retira espaço obsoleto entre as frases
\frenchspacing
%
% Configura o estilo da página dos elementos textuais 
\newcommand{\textualconfig}{%
	\newcommand{\trabalhotitulo}{\imprimirtitulo}
	\textual
	\pagestyle{fancy}
	\fancypagestyle{plain}{\fancyhf{}}
	\fancyhf{}
	\fancyhead[RO,LE]{\footnotesize\thepage}
	\fancyfoot{}
	\cfoot{\ifodd \thepage \footnotesize{\trabalhotitulo} \else \footnotesize{\imprimirautor~(\emailautor) \imprimirtipotrabalho.~\abrevppg/\abrevinstituicao. \imprimirdata.}\fi}	
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{.4pt}	
	\aliaspagestyle{chapter}{fancy}	%adiciona o rodapé do ppgec na primeira pag do capítulo
	%
	% afasta o titulo do primeiro capítulo
	\renewcommand{\chapterheadstart}{\vspace*{\beforechapskip}}
}
%
% Configura o estilo da página dos elementos póstextuais 
\newcommand{\postextualconfig}{%
	\postextual
	\txtbib			% define titulo da bibliografia
	\nobibintoc		% elimina referencia minuscula no sumario
	\tituloreferencias
}
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Possibilita criação de Quadros e Lista de quadros
%	------------------------------------------------
% 	Ver https://github.com/abntex/abntex2/issues/176
%
%\newcommand{\quadroname}{Quadro}
%\newcommand{\listofquadrosname}{Lista de quadros}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\setlength{\cftbeforequadroskip}{12pt}	%define espaçamento entre itens da lista de quadros
%
% configurações para atender às regras da ABNT
\setfloatadjustment{quadro}{\centering}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}
\setfloatlocations{quadro}{hbtp}
\counterwithin{quadro}{chapter}
\setlength{\cftquadronumwidth}{3em}
%
% Formatação de notas em tabelas (no fim das tabelas)
\makesavenoteenv{tabular}
%
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Macros para inserir as variáveis de dados do usuário
%	----------------------------------------------------
%
% Coleta a data completa do trabalho
\newcommand{\qualdatacompleta}[1]{\def\datacompleta{#1}}
\newcommand{\quaispalavraschave}[1]{\def\varpalavraschaves{#1}}
\newcommand{\quaiskeywords}[1]{\def\varkeywords{#1}}
\newcommand{\quaispalabrasclave}[1]{\def\varpalabrasclave{#1}}
%
% Coleta dados do autor
\newcommand{\qualcitarautor}[1]{\def\citarautor{#1}}
\newcommand{\qualemailautor}[1]{\def\emailautor{#1}}
%
% Coleta dados do orientador
\newcommand{\qualtitorientador}[1]{\def\titorientador{#1}}
\newcommand{\qualgeneroorientador}[1]{\uppercase{\def\generoorientador{#1}}}
%
% Coleta dados do coorientador
\newcommand{\temcoorientador}[1]{\uppercase{\def\possuicoorientador{#1}}}
\newcommand{\qualtitcoorientador}[1]{\def\titcoorientador{#1}}
\newcommand{\qualgenerocoorientador}[1]{\uppercase{\def\generocoorientador{#1}}}
%
% Coleta dados do coordenador do curso
\newcommand{\qualcoordenador}[1]{\def\coordenador{#1}}
\newcommand{\qualtitcoordenador}[1]{\def\titcoordenador{#1}}
\newcommand{\qualgenerocoordenador}[1]{\uppercase{\def\generocoordenador{#1}}}
%
% Coleta quantidade de membros da banca
\newcommand{\quantosmembrosbanca}[1]{\def\membrosbanca{#1}}
%
% Criando macros para criar, adicionar e pegar membros da banca em uma lista
\newcounter{cnt}
\newcommand\textlist{}
\newcommand\settext[2]{\csdef{text#1}{#2}}
\newcommand\addtext[1]{\stepcounter{cnt}\csdef{text\thecnt}{#1}}
\newcommand\gettext[1]{\csuse{text#1}}
%
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Macros para fazer a tradução
%	----------------------------
%
% Definindo siglas da instituição
\newcommand{\abrevinstituicao}{UFRGS}
\newcommand{\abrevppg}{PPGEC}
%
%
% Verifica qual a lingua utilizada
\if \varlingua 0 
	%
	% Seleciona a lingua
	\selectlanguage{brazil}
	%
	%
	% Edita as opções do autoref
	\def\chapterautorefname{Capítulo}
	\def\sectionautorefname{Seção}
	\def\subsectionautorefname{Subseção}
	\def\subsubsectionautorefname{Subsubseção}
	\def\figureautorefname{Figura}
	\def\tableautorefname{Tabela}
	\def\quadroautorefname{Quadro}
	\def\pageautorefname{Página}
	\def\equationautorefname{Equação}
	%
	%
	% Muda os labels das figuras e tabelas para o idioma escolhido
	\addto\captionsbrazil{\renewcommand{\figurename}{Figura}}
	\addto\captionsbrazil{\renewcommand{\tablename}{Tabela}}
	% Dados da instituição
	\instituicao{Universidade Federal do Rio Grande do Sul}
	\newcommand{\escola}{Escola de Engenharia}
	\newcommand{\ppg}{Programa de Pós-Graduação em Engenharia Civil}
	\preambulo{\imprimirtipotrabalho~apresentada ao \ppg~da \imprimirinstituicao~como parte dos requisitos para obtenção do título de \tituloobtido.}
	%
	% Titulo dos agradecimentos, lista de abreviaturas e siglas, lista de simbolos
	\renewcommand{\agradecimentosname}{Agradecimentos}
	\renewcommand{\listadesiglasname}{Lista de Abreviaturas e Siglas}
	\renewcommand{\listadesimbolosname}{Lista de Símbolos}
	%
	% Titulo do sumário
	\addto\captionsbrazil{\renewcommand{\contentsname}{Sumário}}
	%
	% Titulo da bibliografia
	\newcommand{\txtbib}{
		\addto\captionsbrazil{\renewcommand{\bibname}{REFERÊNCIAS}}
		\addcontentsline{toc}{chapter}{REFERÊNCIAS}}
	%
	% Titulo dos apendices e anexos
	\newcommand{\txtanexos}{
		\renewcommand{\appendixtocname}{ANEXOS}
		\renewcommand{\anexoname}{ANEXO}
		\renewcommand{\anexosname}{ANEXOS}}
	\newcommand{\txtapendices}{
		\renewcommand{\appendixtocname}{APÊNDICES}
		\renewcommand{\apendicename}{APÊNDICE}
		\renewcommand{\apendicesname}{APÊNDICES}}	
	%
	% Tradução folha de rosto
	\newcommand{\txtorientador}{\IfStrEq{\generoorientador}{F}{Orientadora}{Orientador}}
	\newcommand{\txtcoorientador}{\IfStrEq{\generocoorientador}{F}{Coorientadora}{Coorientador}}
	\newcommand{\txtcoordenadordo}{\IfStrEq{\generocoordenador}{F}{Coordenadora do}{Coordenador do}}
	\newcommand{\txtbancaexaminadora}{Banca Examinadora}	
	\newcommand{\txttextofolhaderosto}{
		\OnehalfSpacing{Esta \MakeTextLowercase{\imprimirtipotrabalho} foi julgada adequada para a obtenção do título de \MakeUppercase{\tituloobtido}, na área de concentração \areaconcentracao, e aprovada em sua forma final pelo professor orientador e pelo \ppg~da \imprimirinstituicao.}}	
	\newcommand{\txttextofolhaderostoquali}{
			\OnehalfSpacing{Texto apresentado como requisito de \MakeTextLowercase{\imprimirtipotrabalho} na área de concentração de \areaconcentracao~do \ppg~da \imprimirinstituicao.}}
	%
	% Documento, curso e título
	\if \vardoctype 0 
		\tipotrabalho{Tese de Doutorado}
		\newcommand{\tipotrabalhocurto}{Tese}
		\newcommand{\cursorealizado}{Doutorado em Engenharia}
		\newcommand{\tituloobtido}{Doutor em Engenharia}	
	\else \if \vardoctype 1
		\tipotrabalho{Dissertação de Mestrado}
		\newcommand{\tipotrabalhocurto}{Dissertação}
		\newcommand{\cursorealizado}{Mestrado em Engenharia}
		\newcommand{\tituloobtido}{Mestre em Engenharia}
	\else \if \vardoctype 2
		\tipotrabalho{Qualificação de Doutorado}
		\newcommand{\tipotrabalhocurto}{Qualificação}
		\newcommand{\cursorealizado}{Doutorado em Engenharia}
		\newcommand{\tituloobtido}{Doutor em Engenharia}
	\else \if \vardoctype 3
		\tipotrabalho{Qualificação de Mestrado}
		\newcommand{\tipotrabalhocurto}{Qualificação}
		\newcommand{\cursorealizado}{Mestrado em Engenharia}
		\newcommand{\tituloobtido}{Mestre em Engenharia}
	\fi \fi \fi \fi
	%
	% Definindo a área de concentração
	\if \vararea 0 
		\newcommand{\areaconcentracao}{Estruturas}
	\else \if \vararea 1
		\newcommand{\areaconcentracao}{Geotecnia}
	\fi \fi	
	%
	% Nome dos quatros e titulo da lista dos quadros
	\newcommand{\quadroname}{Quadro}
	\newcommand{\listofquadrosname}{Lista de quadros}
	%
	% Titulo da lista de tabelas
	\newcommand{\txtlisttablename}{
		\renewcommand{\listtablename}{Lista de tabelas}}
	%
	% Titulo da lista de figuras
	\newcommand{\txtlistfigurename}{	
		\renewcommand{\listfigurename}{Lista de Figuras}}
	%
	% Texto do pacote backref

	% Usado sem a opção hyperpageref de backref
	\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
	% Texto padrão antes do número das páginas
	\renewcommand{\backref}{}
	% Define os textos da citação
	\renewcommand*{\backrefalt}[4]{
		\ifcase #1 %
			Nenhuma citação no texto.%
		\or
			Citado na página #2.%
		\else
			Citado #1 vezes nas páginas #2.%
		\fi}%
	%	
	%
\else \if \varlingua 1
	%
	% Seleciona a lingua
	\selectlanguage{spanish}
	%
	%
	% Edita as opções do autoref
	\def\chapterautorefname{Capítulo}
	\def\sectionautorefname{Sección}
	\def\subsectionautorefname{Subsección}
	\def\subsubsectionautorefname{Subsubsección}
	\def\figureautorefname{Figura}
	\def\tableautorefname{Tabla}
	\def\quadroautorefname{Cuadro}
	\def\pageautorefname{Página}
	\def\equationautorefname{Ecuación}	
	%	
	% Muda os labels das figuras e tabelas para o idioma escolhido
	\addto\captionsbrazil{\renewcommand{\figurename}{Figura}}
	\addto\captionsbrazil{\renewcommand{\tablename}{Tabla}}
	% Dados da instituição
	\instituicao{Universidad Federal de Rio Grande do Sul}
	\newcommand{\escola}{Escuela de Ingeniería}
	\newcommand{\ppg}{Programa de Posgrado en Ingeniería Civil}
	\preambulo{\imprimirtipotrabalho~presentado al \ppg~da \imprimirinstituicao~como parte de los requisitos para obtener el título de \tituloobtido.}
	%
	% Titulo dos agradecimentos, lista de abreviaturas e siglas, lista de simbolos
	\renewcommand{\agradecimentosname}{Agradecimientos}
	\renewcommand{\listadesiglasname}{Lista de Abreviaturas y Acrónimos}
	\renewcommand{\listadesimbolosname}{Lista de Símbolos}
	%
	% Titulo do sumário
	\addto\captionsbrazil{\renewcommand{\contentsname}{Sumário}}
	%
	% Titulo da bibliografia
	\newcommand{\txtbib}{
		\def\refname{REFERENCIAS}
		\addcontentsline{toc}{chapter}{REFERENCIAS}}
	%
	% Titulo dos apendices e anexos
		\newcommand{\txtanexos}{
			\renewcommand{\appendixtocname}{ANEXOS}
			\renewcommand{\anexoname}{ANEXO}
			\renewcommand{\anexosname}{ANEXOS}}			
	\newcommand{\txtapendices}{
			\renewcommand{\appendixtocname}{APÉNDICES}
			\renewcommand{\apendicename}{APÉNDICE}
			\renewcommand{\apendicesname}{APÉNDICES}}
	% Tradução folha de rosto
	\newcommand{\txtorientador}{\IfStrEq{\generoorientador}{F}{Orientadora}{Orientador}}
\newcommand{\txtcoorientador}{\IfStrEq{\generocoorientador}{F}{Coorientadora}{Coorientador}}
\newcommand{\txtcoordenadordo}{\IfStrEq{\generocoordenador}{F}{Coordenadora de}{Coordenador de}}	
	\newcommand{\txtbancaexaminadora}{Junta Examinadora}	
	\newcommand{\txttextofolhaderosto}{
		\OnehalfSpacing{Esta \MakeTextLowercase{\imprimirtipotrabalho} fue considerada adecuada para obtener el título de \MakeUppercase{\tituloobtido}, en el área de concentración de \areaconcentracao, y aprobada en su forma final por el profesor orientador y el \ppg~de la \imprimirinstituicao.}}	
	\newcommand{\txttextofolhaderostoquali}{
		\OnehalfSpacing{Texto apresentado como requisito de \MakeTextLowercase{\imprimirtipotrabalho} en el área de concentración de \areaconcentracao~del \ppg~de la \imprimirinstituicao.}}
	%
	% Documento, curso e título
	\if \vardoctype 0 
		\tipotrabalho{Tesis de doctorado}
		\newcommand{\tipotrabalhocurto}{Tesis}
		\newcommand{\cursorealizado}{Doctorado en Ingeniería}
		\newcommand{\tituloobtido}{Doctor en Ingeniería}	
	\else \if \vardoctype 1
		\tipotrabalho{Disertación de Maestria}
		\newcommand{\tipotrabalhocurto}{Disertación}
		\newcommand{\cursorealizado}{Maestría en Ingeniería}
		\newcommand{\tituloobtido}{Master en Ingeniería}
	\else \if \vardoctype 2
		\tipotrabalho{Calificación de Doctorado}
		\newcommand{\tipotrabalhocurto}{Calificación}
		\newcommand{\cursorealizado}{Doctorado en Ingeniería}
		\newcommand{\tituloobtido}{Doctor en Ingeniería}
	\else \if \vardoctype 3
		\tipotrabalho{Calificación de Maestria}
		\newcommand{\tipotrabalhocurto}{Calificación}
		\newcommand{\cursorealizado}{Maestría en Ingeniería}
		\newcommand{\tituloobtido}{Master en Ingeniería}
	\fi \fi \fi \fi
	%
	% Definindo a área de concentração
	\if \vararea 0 
		\newcommand{\areaconcentracao}{Estructura}
	\else \if \vararea 1
		\newcommand{\areaconcentracao}{Geotecnia}
	\fi \fi	
	%
	% Nome dos quatros e titulo da lista dos quadros
	\newcommand{\quadroname}{Cuadro}
	\newcommand{\listofquadrosname}{Lista de Cuadros}
	%
	% Titulo da lista de tabelas
	\newcommand{\txtlisttablename}{
		\renewcommand{\listtablename}{Lista de Tablas}}
	%
	% Titulo da lista de figuras
	\newcommand{\txtlistfigurename}{	
		\renewcommand{\listfigurename}{Lista de Figuras}}
	%
	% Texto do pacote backref
	% Usado sem a opção hyperpageref de backref
	\renewcommand{\backrefpagesname}{Citado en la(s) página(s):~}
	% Texto padrão antes do número das páginas
	\renewcommand{\backref}{}
	% Define os textos da citação
	\renewcommand*{\backrefalt}[4]{
		\ifcase #1 %
		Sin cita en el texto.%
		\or
	    Citado en la página #2.%
		\else
		Citado #1 veces en las páginas #2.%
		\fi}%
\else \if \varlingua 2
	%
	% Seleciona a lingua
	\selectlanguage{english}
	%
	% Edita as opções do autoref
	\def\chapterautorefname{Chapter}
	\def\sectionautorefname{Section}
	\def\subsectionautorefname{Subsection}
	\def\subsubsectionautorefname{Subsubsection}
	\def\figureautorefname{Figure}
	\def\tableautorefname{Table}
	\def\quadroautorefname{Chart}
	\def\pageautorefname{Page}	
	\def\equationautorefname{Equation}
	%	
	% Muda os labels das figuras e tabelas para o idioma escolhido
	\addto\captionsbrazil{\renewcommand{\figurename}{Figure}}
	\addto\captionsbrazil{\renewcommand{\tablename}{Table}}
	%						     
	% Dados da instituição
	\instituicao{Federal University of Rio Grande do Sul}
	\newcommand{\escola}{School of Engineering}
	\newcommand{\ppg}{Postgraduate Program in Civil Engineering}
	\preambulo{\imprimirtipotrabalho~presented to the \ppg~of the \imprimirinstituicao~as part of the requirements of the \tituloobtido.}
	%
	% Titulo do sumário
	\addto\captionsbrazil{\renewcommand{\contentsname}{Summary}}
	%
	% Titulo dos agradecimentos, lista de abreviaturas e siglas, lista de simbolos
	\renewcommand{\agradecimentosname}{Acknowledgements}
  	\renewcommand{\listadesiglasname}{List of abbreviations and acronyms}
	\renewcommand{\listadesimbolosname}{List of symbols}
	%
	% Titulo da bibliografia
	\newcommand{\txtbib}{
		\addcontentsline{toc}{chapter}{REFERENCES}}
	%
	% Titulo dos apendices e anexos
	\newcommand{\txtanexos}{
		\renewcommand{\appendixtocname}{ANNEXES}
		\renewcommand{\anexoname}{ANNEX}
		\renewcommand{\anexosname}{ANNEXES}}			
	\newcommand{\txtapendices}{
		\renewcommand{\appendixtocname}{APPENDIXES}
		\renewcommand{\apendicename}{APPENDIX}
		\renewcommand{\apendicesname}{APPENDIXES}}
	% Tradução folha de rosto
	\newcommand{\txtorientador}{Supervisor}
	\newcommand{\txtcoorientador}{Co-supervisor}
	\newcommand{\txtcoordenadordo}{Coordinator of the}	
	\newcommand{\txtbancaexaminadora}{Board of Examiners}	
	\newcommand{\txttextofolhaderosto}{
		\OnehalfSpacing{This \MakeTextLowercase{\imprimirtipotrabalho} was considered suitable for obtaining the title of \MakeUppercase{\tituloobtido}, in the field of \areaconcentracao. Its final version was approved by the supervising professor and the \ppg~of the \imprimirinstituicao.}}	
	\newcommand{\txttextofolhaderostoquali}{
		\OnehalfSpacing{Text presented as a requirement for \MakeTextLowercase{\imprimirtipotrabalho} in the field of \areaconcentracao~of the \ppg~of the \imprimirinstituicao.}}
	%
	% Documento, curso e título
	\if \vardoctype 0 
		\tipotrabalho{Doctoral Thesis}
		\newcommand{\tipotrabalhocurto}{Thesis}
		\newcommand{\cursorealizado}{Doctor of Engineering}
		\newcommand{\tituloobtido}{Doctor in Engineering}	
	\else \if \vardoctype 1
		\tipotrabalho{Master's Dissertation}
		\newcommand{\tipotrabalhocurto}{Dissertation}
		\newcommand{\cursorealizado}{Master of Engineering}
		\newcommand{\tituloobtido}{Master in Engineering}
	\else \if \vardoctype 2
		\tipotrabalho{Doctoral qualification}
		\newcommand{\tipotrabalhocurto}{Qualification}
		\newcommand{\cursorealizado}{Doctor of Engineering}
		\newcommand{\tituloobtido}{Doctor in Engineering}
	\else \if \vardoctype 3
		\tipotrabalho{Master's qualification}
		\newcommand{\tipotrabalhocurto}{Qualification}
		\newcommand{\cursorealizado}{Master of Engineering}
		\newcommand{\tituloobtido}{Master in Engineering}
	\fi \fi \fi \fi
	%
	% Definindo a área de concentração
	\if \vararea 0 
		\newcommand{\areaconcentracao}{Estructural}
	\else \if \vararea 1
		\newcommand{\areaconcentracao}{Geothecnical}
	\fi \fi	
	%
	% Nome dos quatros e titulo da lista dos quadros
	\newcommand{\quadroname}{Chart}
	\newcommand{\listofquadrosname}{List of Charts}
	%
	% Titulo da lista de tabelas
	\newcommand{\txtlisttablename}{
		\renewcommand{\listtablename}{List of Tables}}
	%
	% Titulo da lista de figuras
	\newcommand{\txtlistfigurename}{	
		\renewcommand{\listfigurename}{List of Figures}}
	%
	% Texto do pacote backref
	% Usado sem a opção hyperpageref de backref
	\renewcommand{\backrefpagesname}{Cited on the pages:~}
	% Texto padrão antes do número das páginas
	\renewcommand{\backref}{}
	% Define os textos da citação
	\renewcommand*{\backrefalt}[4]{
	\ifcase #1 %
	No citations.%
	\or
	One citation in page #2.%
	\else
	Citation #1 times in pages #2.%
	\fi}%
	%
\fi \fi \fi
%
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Macros para imprimir os elementos pretextuais
%	---------------------------------------------
%
%
% Ficha catalográfica
\newcommand{\imprimirficha}{%
	\includepdf[pages={1}]{./pre/ficha}
}
%
% Folha de aprovação
\newcommand{\imprimirfolhadeaprovacao}{%
\begin{folhadeaprovacao}
	
	\begin{center}
		{\ABNTEXchapterfont\large\MakeUppercase{\imprimirautor}}
		
		\vspace*{\fill}
		\begin{center}
			\OnehalfSpacing{\ABNTEXchapterfont\bfseries\Large\MakeUppercase{\imprimirtitulo}}
		\end{center}
		\vspace*{\fill}
		\if \vardoctype 3 
		\txttextofolhaderostoquali
		\else \if \vardoctype 2
		\txttextofolhaderostoquali
		\else
		\txttextofolhaderosto	
		\fi \fi
		% melhorar o espaçamento entre linhas dessa parte
		\vspace*{20pt}
	\end{center}
	\begin{center}
		\imprimirlocal, \datacompleta
	\end{center}
	\vspace*{20pt}
	\begin{flushright}
		
		\IfStrEq{\possuicoorientador}{SIM}{
			\begin{minipage}{0.52\textwidth}
				\begin{flushright}
					\imprimirorientador \\ \titorientador \\ \txtorientador
					\vspace{7mm}
				\end{flushright}
			\end{minipage}
			\hfill
			\begin{minipage}{0.47\textwidth}
				\begin{flushright}
					\imprimircoorientador \\ \titcoorientador \\ \txtcoorientador
					\vspace{7mm}
				\end{flushright}
		\end{minipage}}{
			\imprimirorientador \\ \titorientador \\ \txtorientador
			\vspace{7mm}}
		%	
		\vspace*{20pt}
		\\ \coordenador \\ \titcoordenador \\ \txtcoordenadordo~ \abrevppg/\abrevinstituicao
		\vspace{36pt}
		%
		\\ \textbf{\MakeUppercase{\txtbancaexaminadora}}
		\vspace{36pt}
		%
		\if \membrosbanca 1 
			\\ \textbf{\gettext{1}~(\gettext{2})} \\ \gettext{3} \vspace{20pt}
		\else \if \membrosbanca 2
			\\ \textbf{\gettext{1}~(\gettext{2})} \\ \gettext{3} \vspace{20pt}
			\\ \textbf{\gettext{4}~(\gettext{5})} \\ \gettext{6} \vspace{20pt}
		\else \if \membrosbanca 3
			\\ \textbf{\gettext{1}~(\gettext{2})} \\ \gettext{3} \vspace{20pt}
			\\ \textbf{\gettext{4}~(\gettext{5})} \\ \gettext{6} \vspace{20pt}
			\\ \textbf{\gettext{7}~(\gettext{8})} \\ \gettext{9} \vspace{20pt}	
		\else \if \membrosbanca 4
			\\
			\begin{minipage}[t]{0.52\textwidth}
				\begin{flushright}
					\textbf{\gettext{1}~(\gettext{2})} \\ \gettext{3} \vspace{20pt}
					\\ \textbf{\gettext{7}~(\gettext{8})} \\ \gettext{9} \vspace{20pt}	
				\end{flushright}
			\end{minipage}
			\hfill
			\begin{minipage}[t]{0.47\textwidth}
				\begin{flushright}
					\textbf{\gettext{4}~(\gettext{5})} \\ \gettext{6} \vspace{20pt}
					\\ \textbf{\gettext{10}~(\gettext{11})} \\ \gettext{12} \vspace{20pt}
				\end{flushright}
			\end{minipage}		
		\else \if \membrosbanca 5
			\\	
			\begin{minipage}[t]{0.52\textwidth}
				\begin{flushright}
					\textbf{\gettext{1}~(\gettext{2})} \\ \gettext{3} \vspace{12pt}
					\\ \textbf{\gettext{7}~(\gettext{8})} \\ \gettext{9} \vspace{12pt}	
					\\ \textbf{\gettext{13}~(\gettext{14})} \\ \gettext{15} \vspace{12pt}
				\end{flushright}
			\end{minipage}
			\hfill
			\begin{minipage}[t]{0.47\textwidth}
				\begin{flushright}
					\textbf{\gettext{4}~(\gettext{5})} \\ \gettext{6} \vspace{12pt}
					\\ \textbf{\gettext{10}~(\gettext{11})} \\ \gettext{12} \vspace{12pt}
				\end{flushright}
			\end{minipage}	
		\else \if \membrosbanca 6
			\\	
			\begin{minipage}[t]{0.52\textwidth}
				\begin{flushright}
					\textbf{\gettext{1}~(\gettext{2})} \\ \gettext{3} \vspace{12pt}
					\\ \textbf{\gettext{7}~(\gettext{8})} \\ \gettext{9} \vspace{12pt}	
					\\ \textbf{\gettext{13}~(\gettext{14})} \\ \gettext{15} \vspace{12pt}
				\end{flushright}
			\end{minipage}
			\hfill
			\begin{minipage}[t]{0.47\textwidth}
				\begin{flushright}
					\textbf{\gettext{4}~(\gettext{5})} \\ \gettext{6} \vspace{12pt}
					\\ \textbf{\gettext{10}~(\gettext{11})} \\ \gettext{12} \vspace{12pt}
					\\ \textbf{\gettext{16}~(\gettext{17})} \\ \gettext{18} \vspace{12pt}
				\end{flushright}
			\end{minipage}	
		\else
		\fi \fi \fi \fi \fi \fi
		%	
	\end{flushright}
	
	\vspace*{\fill}
	\vspace*{\fill}
	
\end{folhadeaprovacao}
}
%
% Errata
\newcommand{\imprimirerrata}{%
 \begin{errata}
	\SingleSpacing{\noindent \MakeUppercase{\citarautor}~{\bfseries \rmfamily \fontsize{12}{12} \imprimirtitulo}. \imprimirdata. \thelastpage p. \tipotrabalhocurto~(\cursorealizado) -- \ppg, \imprimirinstituicao, \imprimirlocal.}
	
	\input{\pathpre errata}
	\noindent
\end{errata}
}
%
% Dedicatória
\newcommand{\imprimirdedicatoria}{%
\begin{dedicatoria}
	\vspace*{\fill}
	\begin{flushright}
		\input{\pathpre dedicatoria}
	\end{flushright}
\end{dedicatoria}
}
%
% Agradecimentos
\newcommand{\imprimiragradecimentos}{%
\begin{agradecimentos}
	\input{\pathpre agradecimentos}	
\end{agradecimentos}
}
%
% Epígrafe
\newcommand{\imprimirepigrafe}{%
\begin{epigrafe}
	\vspace*{\fill}
	\begin{flushright}
		\input{\pathpre epigrafe}
	\end{flushright}
\end{epigrafe}
}
%
% Resumo em Português e se for o caso, espanhol
\newcommand{\imprimirresumo}{%
\setlength{\absparsep}{18pt} % ajusta o espaçamento dos parágrafos do resumo
\if \varlingua 1
	\begin{resumo}[Resumen]
		\SingleSpacing{\MakeUppercase{\citarautor}~{\bfseries \rmfamily \fontsize{12}{12} \imprimirtitulo}. \imprimirdata. \thelastpage p. \tipotrabalhocurto~(\cursorealizado) -- \ppg, \imprimirinstituicao, \imprimirlocal.}
		\begin{otherlanguage*}{spanish}
	
			\OnehalfSpacing{\input{\pathpre resumen}} \vskip 24pt
		
			\noindent
			\textbf{Palabras-clave}: \textit{\varpalabrasclave}.
		\end{otherlanguage*}
	\end{resumo}	
\fi
\begin{resumo}[Resumo]
	\SingleSpacing{\MakeUppercase{\citarautor}~{\bfseries \rmfamily \fontsize{12}{12} \imprimirtitulo}. \imprimirdata. \thelastpage p. \tipotrabalhocurto~(\cursorealizado) -- \ppg, \imprimirinstituicao, \imprimirlocal.}
	
	\OnehalfSpacing{\input{\pathpre resumo}} \vskip 24pt
	
	\textbf{Palavras-chave}: \textit{\varpalavraschaves}.
\end{resumo}
}
%
% Resumo em outra lingua
\newcommand{\imprimirabstract}{%
\begin{resumo}[Abstract]
	\SingleSpacing{\noindent \MakeUppercase{\citarautor}~{\bfseries \rmfamily \fontsize{12}{12} \imprimirtitulo}. \imprimirdata. \thelastpage p. \tipotrabalhocurto~(\cursorealizado) -- \ppg, \imprimirinstituicao, \imprimirlocal.}
	\begin{otherlanguage*}{english}
		
		\OnehalfSpacing{\input{\pathpre abstract}} \vskip 24pt
		
		\noindent
		\textbf{Keywords}: \textit{\varkeywords}.
	\end{otherlanguage*}
\end{resumo}
}
%
% Imprimir lista de figuras
\newcommand{\imprimirlistafiguras}{%
	\txtlistfigurename
	\pdfbookmark[0]{\listfigurename}{lof}
	\listoffigures*
	\cleardoublepage
}
%
% Imprimir lista de quadros
\newcommand{\imprimirlistaquadros}{%
	\pdfbookmark[0]{\listofquadrosname}{loq}
	\listofquadros*
	\cleardoublepage
}
%
% Imprimir lista de tabelas
\newcommand{\imprimirlistatabelas}{%
	\txtlisttablename
	\pdfbookmark[0]{\listtablename}{lot}
	\listoftables*
	\cleardoublepage
}
%
% Imprimir lista de abreviaturas e siglas
\newcommand{\imprimirlistasiglas}{%
\begin{siglas}
	\input{\pathpre siglas}
\end{siglas}
}
%
%
% inserir lista de símbolos
\newcommand{\imprimirlistasimbolos}{%
\begin{simbolos}
	\input{\pathpre simbolos}
\end{simbolos}
}
%
% Imprimir o sumario
\newcommand{\imprimirsumario}{%
	\pdfbookmark[0]{\contentsname}{toc}
	\tableofcontents*
	\cleardoublepage
}
% 
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Macros para imprimir os elementos postextuais
%	---------------------------------------------
%
\newcommand{\tituloreferencias}{%
	\if \varlingua 0 
		\renewcommand{\bibname}{Referências}	
	\else \if \varlingua 1
		\renewcommand{\bibname}{Referencias}	
	\else \if \varlingua 2	
		\renewcommand{\bibname}{References}	
	\fi \fi \fi
}
%
% Imprimir capa apêndice
\newcommand{\imprimircapaapendices}{%
	\addtocontents{toc}{\protect \setcounter{tocdepth}{-1}}     %Remove capítulos e seções dos apêndices e anenos no sumário
	\apendices
	\txtapendices
	\partpage
}
%
% Imprimir capa anexos
\newcommand{\imprimircapaanexos}{%
	\anexos 
	\txtanexos
	\partpage
}
%
%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 	Reconfigurando macros do abntex2 (capa e folha de rosto)
%	--------------------------------------------------------
%
% Imprimir capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \begin{center}
  { \fontsize{16}{16} \rmfamily
    \imprimirinstituicao \\
  }
  { \fontsize{14}{14} \rmfamily
    \escola \\
    \ppg \\
  }
\end{center}


\vfill % Joga o cabeçalho no topo da página

% Título
\vspace{10pt}
\begin{center}
  \begin{center}
    { \fontsize{16}{16} \bfseries
      \ABNTEXchapterfont\LARGE\rmfamily\MakeUppercase{\imprimirtitulo}
    }
  \end{center}

% Autor
  \vspace{60pt}
  \begin{center}
    { \fontsize{14}{14} \rmfamily \bfseries
      \imprimirautor
    }
  \end{center}

  \vfill

% Parte de baixo da página
  \begin{center}
    { \fontsize{12}{12} \rmfamily
      \imprimirlocal\\
      \imprimirdata
    }
  \end{center}

\end{center}
  \end{capa}
}
%
% Imprimir folha de rosto
\renewcommand{\imprimirfolhaderosto}{%
  \begin{folhaderosto}%

\cleardoublepage
\pagenumbering{arabic}  % reinicia a numeração de página
\thispagestyle{empty} % Não mostra o número na Página de Rosto

\begin{center}
  { \fontsize{14}{14} \rmfamily
    \MakeUppercase{\imprimirautor}\\
  }
\end{center}

%\vspace*{\fill} % Joga o cabeçalho no topo da página

% Título
\vspace{90pt}
\begin{center}
  \begin{center}
    { \fontsize{16}{16} \rmfamily \bfseries
      \MakeUppercase{\imprimirtitulo}
    }\\
  \end{center}


% Título obtido
  \vspace{96pt}
  \begin{flushright}
  	\begin{minipage}{0.8\textwidth}
  		\begin{flushright}
      		{ \fontsize{14}{14} \rmfamily
        		\imprimirpreambulo
      		}
  		\end{flushright}
    \end{minipage}
  \end{flushright}

  \vfill

% Parte de baixo da página
  \begin{center}
    { \fontsize{12}{12} \rmfamily
      \imprimirlocal\\
      \imprimirdata
    }
  \end{center}

\end{center}
\end{folhaderosto}
}
%

\endinput