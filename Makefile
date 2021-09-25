github-pages: github-pages-stamp

github-pages-stamp:
	(cd marsbar/doc && make dist-stamp)
	ghp-import -b main -n marsbar/doc/dist/
	git push origin main:main --force
	@echo
	@echo "Published to Github"
	touch github-pages-stamp

clean:
	(cd marsbar/doc && make clean)
