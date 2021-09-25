github-pages: github-pages-stamp

github-pages-stamp:
	./make_gh_pages.sh
	@echo
	@echo "Published to Github"
	touch $@

clean:
	rm -f *-stamp
	(cd marsbar/doc && make clean)
