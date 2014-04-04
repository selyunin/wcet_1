
TARGET := report.pdf

PDFLATEX := pdflatex -interaction=nonstopmode -halt-on-error

.PHONY: all clean

all: $(TARGET)


%.pdf: %.tex
	$(PDFLATEX) $<
	$(PDFLATEX) $<


clean:
	rm -f $(TARGET)
	rm -f *.aux *.out *.log *.toc
