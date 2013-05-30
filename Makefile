default: stage

ORIGIN:=$(shell git config --get remote.origin.url)

OUTPUT_DIR=output

HTML_FILES=output/index.html output/forking.html output/signin.html output/escape-codes.html

stage: $(HTML_FILES)

.PHONY: $(OUTPUT_DIR)/log-msg
$(OUTPUT_DIR)/log-msg:
	git diff --exit-code
	echo 'auto-generated from master' > $(OUTPUT_DIR)/log-msg
	git log -1                       >> $(OUTPUT_DIR)/log-msg

commit: stage $(OUTPUT_DIR)/log-msg
	git diff --exit-code
	cd $(OUTPUT_DIR) && git diff --quiet --exit-code --cached || git commit -F log-msg && rm log-msg

push: commit
	cd $(OUTPUT_DIR)/ && git push origin gh-pages

$(OUTPUT_DIR):
	git branch -f -t gh-pqges origin/gh-pages
	git clone --branch gh-pages --single-branch -- . $@/
	cd $@/ && git remote set-url origin $(ORIGIN)

clean:
	rm -rf $(OUTPUT_DIR)/

$(OUTPUT_DIR)/%.html: %.xexpr output generate-page.sch
	larceny -nobanner -- generate-page.sch $< $@
	cd $(OUTPUT_DIR) && git add $(shell basename $@)
