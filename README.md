# Modelo LaTeX PPGEC/UFRGS

Este é o modelo para teses e dissertações do PPGEC/UFRGS em LaTeX. Este modelo tem os seguintes arquivos na sua raiz:

  - main.tex - arquivo principal que gerencia o modelo inteiro;
  - dados.tex - arquivo onde o aluno coloca seus dados;
  - pacotes_macros.tex - arquivo lido no preâmbulo do main.tex onde o aluno pode adicionar seus próprios pacotes, criar macros, definir operadores e simbolos matemáticos;
  - ppgec.cls - classe que contém as opções de formatação, os pacotes e as principais macros para construir o modelo. Essa classe é baseada no projeto [abnTeX2](https://www.abntex.net.br/) porém com modificações de algumas macros e criação de novas para formatação. **Verifique se você possuí todos os pacotes instalados no seu computador. Dentro desse arquivo no cabeçalho há uma lista dos pacotes utilizados. Se algum faltar, você pode baixar utilizando o MikTeX**;
  - limpar.bat - arquivo batch para limpar os arquivos de compilação do LaTeX.
 
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
  - **Língua**: pt (português), en (inglês) e sp (espanhol)

## Documento exemplo

Esse documento possuí capitulos que ajudarão você a entender a filosofia do modelo e os principais comandos utilizados. Após o Capítulo 1, introdutório, o Capítulo 2 apresenta a filosofia LaTeX, um mini tutorial para instalação dos programas necessários para compilar o modelo e alguns links de tutoriais que podem ser úteis. Os capitulos seguintes exemplificam os principais comandos LaTeX para inserção de citação, figuras, tabelas, referências cruzadas e etc.

## Desenvolvedores

Esse modelo foi desenvolvido pelos colegas:

- Augusto Bopsin Borges (augusto.borges@ufrgs.br)
- Rodrigo Escolante Pereira (rodrigoescolante@gmail.com)
- Felipe Pinto da Motta Quevedo (00152604@ufrgs.br)

Você pode contribuir com sugestões e relatando os Bugs a qualquer um dos desenvolvedores. Se você faz uso do Github pode também trabalhar sobre uma cópia desse projeto.

O template em *.docx também está disponível em arquivo compactado Templates_Word.rar

