.PHONY: attachments clean all

out/main.pdf: $(filter-out $(wildcard out),$(wildcard *))
	mkdir -p out
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=out main -shell-escape

attachments:
	mkdir -p out
	./attachments.sh

clean:
	rm -rf out

all: clean attachments out/main.pdf
