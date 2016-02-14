OUTPUT_DIR=out
FILE=main

_COMPILE_FILE=pdflatex -interaction=nonstopmode $(FILE).tex
_COMPILE_BIB=bibtex $(FILE).aux
_OPEN_FILE=gnome-open $(OUTPUT_DIR)/$(FILE).pdf 

default:
	rm -rf ./out/*
	mkdir -p out
	cp chapters/* out
	cp main.tex out
	cp thesis.bib out
	cp sty/* out
	cp figures out -rf
	cp plainnat-pt.bst out
	cd ./out; $(_COMPILE_FILE) ; $(_COMPILE_BIB) ; $(_COMPILE_FILE); $(_COMPILE_FILE)
	pwd; gnome-open out/main.pdf
clean:
	rm ./$(OUTPUT_DIR) -rf

open:
	$(_CREATE_DIR)
	printf "\n\n\n\n\n"
	cp *.bib $(OUTPUT_DIR)
	$(_COMPILE_FILE)
	printf "\n\n\n\n\n"
	$(_COMPILE_BIB)
	printf "\n\n\n\n\n"
	$(_COMPILE_FILE)
	$(_COMPILE_FILE)
	$(_OPEN_FILE) &
