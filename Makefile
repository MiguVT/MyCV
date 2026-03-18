
.PHONY: all clean

CC = lualatex
OUT_DIR = .
CV_NAMES = miguvt_cv miguvt_cv_ES
CV_SRCS = $(shell find $(OUT_DIR) -type f -name '*.tex' \
	-not -name 'miguvt_cv.tex' \
	-not -name 'miguvt_cv_ES.tex')

all: $(foreach x,$(CV_NAMES),$x.pdf)

%.pdf: $(OUT_DIR)/%.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUT_DIR) $<
	$(CC) -output-directory=$(OUT_DIR) $<

clean:
	rm -rf $(OUT_DIR)/*.pdf $(OUT_DIR)/*.aux $(OUT_DIR)/*.log $(OUT_DIR)/*.out
