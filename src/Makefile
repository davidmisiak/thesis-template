.PHONY: clean attachments main all

clean:
	rm -rf out

attachments:
	mkdir -p out
	./attachments.sh

main:
	mkdir -p out
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=out main

all: clean attachments main
