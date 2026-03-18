.PHONY: all clean

CC = lualatex
OUT_DIR = .
CV_SRCS = $(shell find $(OUT_DIR) -type f -name '*.tex' -not -name 'miguvt_cv.tex')

all: $(foreach x, miguvt_cv, $x.pdf)

miguvt_cv.pdf: $(OUT_DIR)/miguvt_cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUT_DIR) $<

clean:
	rm -rf $(OUT_DIR)/*.pdf $(OUT_DIR)/*.aux $(OUT_DIR)/*.log $(OUT_DIR)/*.out
