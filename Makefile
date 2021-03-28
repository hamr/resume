.PHONY: examples clean hooks

CC = xelatex
EXAMPLES_DIR = examples
RESUME_DIR = examples/resume
CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

RESUME_IN = resume.tex $(wildcard resume/*.tex) awesome-cv.cls .git/gitHeadInfo.gin
RESUME_OUT = resume.pdf resume.log resume.aux resume.fdb_latexmk resume.out resume.xdv

resume.pdf: $(RESUME_IN)
	$(CC) -interaction=nonstopmode $<

# Use phony target 'hooks' to run scripts/make-gitHeadInfo.gin every time.
.git/gitHeadInfo.gin: hooks

hooks:
	scripts/make-gitHeadInfo.gin

examples: $(foreach x, coverletter cv resume, $x.pdf)

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	-rm -rf $(RESUME_OUT)
	# rm -rf $(EXAMPLES_DIR)/*.pdf
