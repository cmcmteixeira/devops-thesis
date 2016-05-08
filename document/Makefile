OUTPUT_DIR=/tmp/pdf
FILE=TowardsDevops

_COMPILE_FILE=pdflatex -interaction=nonstopmode $(FILE).tex
_COMPILE_BIB=bibtex $(FILE).aux

default:
	rm -rf $(OUTPUT_DIR)
	mkdir -p $(OUTPUT_DIR)
	cp chapters/* $(OUTPUT_DIR)
	cp $(FILE).tex $(OUTPUT_DIR)
	cp thesis.bib $(OUTPUT_DIR)
	cp sty/* $(OUTPUT_DIR)
	cp figures $(OUTPUT_DIR) -rf
	cp plainnat-pt.bst $(OUTPUT_DIR)
	cd $(OUTPUT_DIR); $(_COMPILE_FILE) ; $(_COMPILE_BIB) ; $(_COMPILE_FILE); $(_COMPILE_FILE)
	cp $(OUTPUT_DIR)/$(FILE).pdf .;

