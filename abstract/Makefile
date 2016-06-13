OUTPUT_DIR=/tmp/pdf
FILE=paper

_COMPILE_FILE=pdflatex -interaction=nonstopmode $(FILE).tex
_COMPILE_BIB=bibtex $(FILE).aux

default:
	rm -rf $(OUTPUT_DIR)
	rm  -f $(FILE).pdf
	mkdir -p $(OUTPUT_DIR)
	cp * $(OUTPUT_DIR)
	cd $(OUTPUT_DIR) ; $(_COMPILE_FILE) ; $(_COMPILE_BIB) ; $(_COMPILE_FILE); $(_COMPILE_FILE)
	cp $(OUTPUT_DIR)/$(FILE).pdf .;

