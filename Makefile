default: 2017-10-05-journal-club-gif.pdf

2017-10-05-journal-club-gif.pdf: 2017-10-05-journal-club-gif.md template/header.tex template/beamer.pandoc
	mkdir -p build
	pandoc -t beamer -H template/header.tex --template=template/beamer.pandoc --filter=pandoc/pandoc-svg.py --latex-engine=xelatex $< -o $@
