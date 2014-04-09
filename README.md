# Readme 

Please see [http://micha.elmueller.net/2014/04/scratches/](http://micha.elmueller.net/2014/04/scratches/)
for a description of this project.


## Process documentation

In chronological order:

 * Cropping original Matlab PNGs, so that no border around the image is left 
   (using Gimp Autocrop or manullay adjusting the canvas size in cases
   where that didn't work).
 * Using Inkscape as a mean to transform the PNG into SVG (via "Path > Trace
   Bitmap", using the "Colors" mode, 100 scans, no smoothing, stack scans 
   enabled and no background removal).
 * Scaling those SVGs into a common format (DIN A3 proportions). See the
   `resizesvgs` command in the `Makefile`.

And then optionally:

 * Transforming those SVGs back into a PNG. See the command `renderpngs` in
   the Makefile.


# License

	These work is licensed under a Creative Commons Attribution 4.0 
	International license: http://creativecommons.org/licenses/by/4.0/.

When possible attribute as *Michael Müller* with a link to the blog post at 
[http://micha.elmueller.net/2014/04/scratches/](http://micha.elmueller.net/2014/04/scratches/).
I am always happy to hear about stuff getting used, so don't be shy on
writing a mail about your use case :-).
