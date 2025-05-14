TEX = lualatex
SRCDIR = tex
AUXDIR = aux
OUTDIR = pdf

export TEXINPUTS := $(SRCDIR):$(TEXINPUTS)

.PHONY: clean

%.pdf:
	$(TEX) $(SRCDIR)/$*.tex
	@mkdir -p $(AUXDIR)
	@mkdir -p $(OUTDIR)
	@echo "Moving auxiliary files to $(AUXDIR)."
	@mv $*.aux $(AUXDIR)
	@mv $*.log $(AUXDIR)
	@echo "Moving final document to $(OUTDIR)."
	@mv $*.pdf $(OUTDIR)
	@echo "Done."

clean:
	@echo "Removing temporary directories."
	rm -rf $(AUXDIR)
