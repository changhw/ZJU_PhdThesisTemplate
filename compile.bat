@echo off
set /a startS=%time:~6,2%
set /a startM=%time:~3,2%
::echo %time%
echo 1st-xelatex
xelatex -no-pdf    -halt-on-error --interaction=nonstopmode  PlasmaThesis.tex > make.log
echo 2nd-bibtex
bibtex  PlasmaThesis > make.log
echo 3rd-xelatex
xelatex -no-pdf    -halt-on-error --interaction=nonstopmode  PlasmaThesis.tex > make.log
echo 4th-xelatex
xelatex -synctex=1 -halt-on-error --interaction=nonstopmode  PlasmaThesis.tex > make.log
set /a endS=%time:~6,2%
set /a endM=%time:~3,2%
::echo %time%
set /a diffS_=%endS%-%startS%
set /a diffM_=%endM%-%startM%
set /a diffTime = %diffM_%*60+%diffS_%
echo Done! Cost:%diffTime%sec.
