# Thesis Template (FMFI UK, Computer Science)

This repository contains a LaTeX template for bachelor's and master's theses in Computer Science at the Comenius University Faculty of Mathematics, Physics and Informatics.

## Dependencies

Linux, TeX Live, latexmk.

## Usage

1. Clone this repository.
1. Add your information to `src/variables.tex`.
1. Replace the assignment files in `src/images` with your files from AIS.
1. Add/modify chapters in `src/chapters` and in `src/variables.tex`.
1. We recommend using VS Code with the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension to build the PDF (also with live preview), but any text editor can be used instead. To build the PDF manually, run `make -C src main`.
1. Add your package imports and custom LaTeX commands to `src/definitions.tex` and your bibliography to `src/references.bib`.
1. You can modify and use `src/attachments.sh` to zip your thesis attachments (this can be useful e.g. if you often share the files with your supervisor).

## Contributions

If you improve the template in any way, please open a pull request with the changes!

Contributors: Dávid Mišiak, Samuel Čavoj, Matúš Hedera
