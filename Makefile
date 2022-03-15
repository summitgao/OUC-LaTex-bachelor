build_main:
	xelatex -file-line-error -interaction=nonstopmode -synctex=1 main.tex

build_mainor:
	xelatex -file-line-error -interaction=nonstopmode -synctex=1 openingreport.tex

clean:
	rm -rf *.pdf *.log  *.aux *.synctex.gz *.toc
