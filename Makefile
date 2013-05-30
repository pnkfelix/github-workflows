default: output/index.html

ORIGIN:=$(shell git config --get remote.origin.url)

OUTPUT_DIR=output

$(OUTPUT_DIR):
	git clone --branch gh-pages --single-branch . $@/
	cd $@/ && git remote set-url origin $(ORIGIN)

clean:
	rm -rf $(OUTPUT_DIR)/

output/index.html: index.xexpr output generate-page.sch
	larceny -nobanner -- generate-page.sch $< $@
