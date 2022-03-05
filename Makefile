build_main:
	mkdir "out/main"
	xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory=out/main/ main.tex

build_mainor:
	mkdir "out/openingreport"
	xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory=out/openingreport/ openingreport.tex

clean:
	rm -rf *.pdf *.log ./out/*
