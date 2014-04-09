default:
	all

all:
	node wpteaser.js

resizesvgs:
	rm -f selection_svgs_scaled/*
	(cd ./selection_svgs/ && for i in *.svg; do rsvg-convert $$i -w 560 -h 792 -f svg -o ../selection_svgs_scaled/`echo $$i`; done)
