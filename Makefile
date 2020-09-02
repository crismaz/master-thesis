SRC = cover
BIBL = bibl.bib
TEXS = segments.tex cover.tex apxcomplete.tex weighted_segments.tex apx_choose_variable.pdf_tex apx_or_gadget.pdf_tex apx_clause.pdf_tex

cover.pdf: $(SRC).tex $(BIBL) pracamgr.cls $(TEXS)
	pdflatex $(SRC)
	bibtex $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)
