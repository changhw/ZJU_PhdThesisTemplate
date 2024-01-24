# Haowei 20211217, Compile Latex with xelatex + bibtex + xelatex*2
# Ref: https://raw.githubusercontent.com/farseerfc/sjtu-thesis-xelatex/master/Makefile

BASE = PlasmaThesis# replace with your file name
TEXFLAG1 = -halt-on-error --interaction=nonstopmode -no-pdf 
TEXFLAG2 = -synctex=1 -halt-on-error --interaction=nonstopmode# -no-pdf

${BASE}.pdf: ${BASE}.tex ./chapters/*
	rm -rf ${BASE}.aux ${BASE}.bbl ${BASE}.blg ${BASE}.lof ${BASE}.log ${BASE}.lot ${BASE}.nlo ${BASE}.out ${BASE}.toc ${BASE}.xdv ${BASE}.synctex make.log #${BASE}.pdf ${BASE}.synctex.gz
	xelatex ${TEXFLAG1} ${BASE} > make.log
	bibtex  ${BASE}             > make.log
	xelatex ${TEXFLAG1} ${BASE} > make.log
	xelatex ${TEXFLAG2} ${BASE} > make.log

clean:
	rm -rf ${BASE}.aux ${BASE}.bbl ${BASE}.blg ${BASE}.lof ${BASE}.log ${BASE}.lot ${BASE}.nlo ${BASE}.out ${BASE}.toc ${BASE}.xdv ${BASE}.synctex make.log #${BASE}.pdf ${BASE}.synctex.gz
