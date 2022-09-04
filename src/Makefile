.PHONY: attachments clean all

out/main.pdf: $(filter-out $(wildcard out),$(wildcard *))
	mkdir -p out
	latexmk -pdf -interaction=nonstopmode -synctex=1 -file-line-error -outdir=out main

attachments:
	mkdir -p out
	./attachments.sh

clean:
	rm -rf out

all: clean attachments out/main.pdf
