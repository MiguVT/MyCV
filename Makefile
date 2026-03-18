.PHONY: all clean

CC = xelatex
SRC = miguvt_cv.tex
PDF = miguvt_cv.pdf

all: $(PDF)

$(PDF): $(SRC)
	$(CC) $<

clean:
	rm -rf *.aux *.log *.out *.pdf
