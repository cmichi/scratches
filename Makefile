default:
	all

all:
	node wpteaser.js

resizesvgs:
	(cd ./preprocessing/svgs/ && 		\
		for i in *.svg; do 		\
			rsvg-convert $$i 	\
			-w 560 			\
			-h 792 			\
			-f svg 			\
			-o ../../svgs/`echo $$i`; \
		done)

svgs2png:
	(cd ./preprocessing/svgs/ && 	\
		for file in *.svg ; do 	\
			convert 	\
			  -resize x800 	\
			  "$file" "../preprocessing/pngs/${file/%svg/png}" ;\
		done)

renderpngs:
		mkdir small/
		mkdir large/

		for file in *.png ; do \
			convert -resize x400 "$file" "large/${file/%svg/png}" ; done

		for file in *.png ; do \
			convert -resize x200 "$file" "small/${file/%svg/png}" ; done

trim:
	for a in *.png; do convert -trim "$a" "$a"; done
