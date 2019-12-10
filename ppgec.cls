%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a UFRGS
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertacao-ufrgs-abntex2}[2014/04/06 v1.0 Modelo da UFRGS baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}



%%%% alterando a capa %%%%
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \begin{center}
  { \fontsize{16}{16} \rmfamily
    Universidade Federal do Rio Grande do Sul\\
  }
  { \fontsize{14}{14} \rmfamily
    Escola de Engenharia\\
    Programa de P\'os-Gradua\c c\~ao em Engenharia Civil\\
  }
\end{center}


\vfill % Joga o cabeçalho no topo da página

% Título
\vspace{10pt}
\begin{center}
  \begin{center}
    { \fontsize{16}{16} \bfseries
      \ABNTEXchapterfont\LARGE\rmfamily\imprimirtitulo
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

%%%%%
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

\vspace*{\fill} % Joga o cabeçalho no topo da página

% Título
\vspace{10pt}
\begin{center}
  \begin{center}
    { \fontsize{16}{16} \rmfamily \bfseries
      \MakeUppercase{\imprimirtitulo}
    }\\
  \end{center}


% Título obtido
  \vspace{60pt}
  \begin{flushright}
    \begin{minipage}{0.8\textwidth}
      { \fontsize{14}{14} \rmfamily
        \imprimirpreambulo
      }
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

% Redefine Fonte de Capítulos e Seções

\renewcommand{\ABNTEXchapterfont}{\fontfamily{ptm}\fontseries{b}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\large}

\renewcommand{\ABNTEXsectionfont}{\fontfamily{ptm}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\large}
% ---