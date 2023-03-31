# Modelo LaTeX PPGEC/UFRGS v2.3

Este é o modelo para teses e dissertações do PPGEC/UFRGS em LaTeX. Este modelo tem os seguintes arquivos na sua raiz:

  - **main.tex** - arquivo principal que gerencia o modelo inteiro;
  - **dados.tex** - arquivo onde o aluno coloca seus dados;
  - **pacotes_macros.tex** - arquivo lido no preâmbulo do main.tex onde o aluno pode adicionar seus próprios pacotes, criar macros, definir operadores e simbolos matemáticos;
  - **ppgec.cls** - classe que contém as opções de formatação, os pacotes e as principais macros para construir o modelo. Essa classe é baseada no projeto [abnTeX2](https://www.abntex.net.br/) porém com modificações de algumas macros e criação de novas para formatação. **Verifique se você possuí todos os pacotes instalados no seu computador. Dentro desse arquivo no cabeçalho há uma lista dos pacotes utilizados. Se algum faltar, a compilação indicará seu nome em uma lista de erros. Você pode baixar o pacote utilizando o MikTeX**;
  - **limpar.bat** - arquivo batch para limpar os arquivos de compilação do LaTeX.
  - **.gitignore** - arquivo que evita sincronizar arquivos de compilação da sua máquina local ao repositório do GitHub, caso você use esse recurso;
  - **main.pdf** - arquivo pdf compilado do projeto;
  - **Templates_Word.rar** - arquivo com o modelo em Word do PPGEC e algumas normas da ABNT.
 
Dentro das pastas tem-se os seguintes arquivos:

- bib\referencia.bib - o arquivo de referências bibliográficas;
- chap\ *.tex - arquivos referentes aos capítulos do documento;
- fig\ (*.pdf, *.jpg, *.png...) - arquivos referentes as figuras do documento;
- pre\ *.tex - arquivos referentes aos elementos pré-textuais;
- pro\ *.tex - arquivos referentes aos elementos pós-textuais.

No interior de cada arquivo tem um cabeçalho com breves explicações de utilização.

## Opções da classe

A classe ppgec.cls possui três opções que personalizam o documento:

  - **Tipo de documento**: doutorado, mestrado, qdoutorado (qualificação de doutorado), qmestrado (qualificação de mestrado);
  - **Área de concentração**: estrutura e geotecnica;
  - **Língua**: pt (português), en (inglês) e sp (espanhol).

## O que contém o documento exemplo?

Esse documento possui capitulos que ajudarão você a entender a filosofia do modelo e os principais comandos utilizados. Após o Capítulo 1, introdutório, o Capítulo 2 apresenta a filosofia LaTeX, um mini tutorial para instalação dos programas necessários para compilar o modelo e alguns links de tutoriais que podem ser úteis. Os capitulos seguintes exemplificam os principais comandos LaTeX para inserção de citação, figuras, tabelas, referências cruzadas e etc.

## Links Úteis

 - [Video Sobre modelo latex ppgec-ufrgs do canal do Youtube CEMACOM](https://youtu.be/rphNFgaBviU)
 - [Video sobre o TeXstudio do canal do Youtube CEMACOM](https://youtu.be/kAnzGjju8QM)
 - [Uma não tão pequena introdução ao LaTeX](http://zelmanov.ptep-online.com/ctan/lshort_port.pdf)

## Desenvolvedores

Esse modelo foi desenvolvido pelos colegas:

- Augusto Bopsin Borges (augustobopsinborges@gmail.com)
- Rodrigo Escolante Pereira (rodrigoescolante@gmail.com)
- Felipe Pinto da Motta Quevedo (00152604@ufrgs.br)

Você pode contribuir com sugestões e relatando os Bugs a qualquer um dos desenvolvedores. Se você faz uso do Github pode também trabalhar sobre uma cópia desse projeto.

## Versões

+ v2.0 (Upload: 08/02/2021)

	+ Criado a classe ppge.cls com pacotes e macros que coordenam toda a formatação do modelo;
	+ Organização dos arquivos nos diretórios;
	+ Reestruturação do arquivo main.tex;
	+ Criação do arquivo limpar.bat para eliminar arquivos de compilação.

+ v2.1 (Upload: 09/02/2021)
	+ Correção do traço colado ao número na lista de figuras;
	+ Correção do bug da folha de aprovação que ocupava duas páginas devido ao tamanho do título e quantidade de membros da banca;
	+ Passado para maiúsculo a primeira letra de figuras, tabelas e equações referenciadas ao longo do texto;
	+ Eliminado título repetido nos anexos e apêndices;
	+ Adicionado exemplo de declaração de símbolos e operadores matemáticos no arquivo pacotes_macros.tex e no arquivo de simbolos.tex.

+ v2.2 (Upload: 03/03/2021)

	+ Adicionado Links úteis e controle de versão no README.md;
	+ Título maiúsculo na capa;
	+ Eliminado o exemplo de declaração de símbolos e operadores matemáticos no arquivo pacotes_macros.tex e no arquivo de simbolos.tex;
	+ Adicionado exemplo do uso do \newcommand para símbolos e operadores matemáticos no arquivo de simbolos.tex;
	+ Adicionado o arquivo .gitignore para evitar sincronizar ao GitHub arquivos de compilação;
	+ Arquivos modificados: ppgec.cls, simbolos.tex, main.tex e pacotes_macros.tex.

+ v2.3 (Upload: 25/04/2022)

	+ Corrige "Qualificação de Mestrado" para "Seminário de Mestrado". Para atualizar para esta versão, substitua apenas os arquivos ``ppgec.cls`` e ``main.tex`` em relação àqueles da versão 2.2. No arquivo ``main.tex``, preserve o seu código de elementos textuais até o final do arquivo.
