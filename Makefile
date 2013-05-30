default: stage

ORIGIN:=$(shell git config --get remote.origin.url)

OUTPUT_DIR=output

stage: output/index.html

push: output/index.html
	cd $(OUTPUT_DIR)/ && git push origin gh-pages

$(OUTPUT_DIR):
	git clone --branch gh-pages --single-branch . $@/
	cd $@/ && git remote set-url origin $(ORIGIN)

clean:
	rm -rf $(OUTPUT_DIR)/

output/index.html: index.xexpr output generate-page.sch
	larceny -nobanner -- generate-page.sch $< $@
