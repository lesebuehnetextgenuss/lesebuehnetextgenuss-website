find . -iname \*.jpg -exec convert -verbose -quality 75 -resize "1080x1080^" "{}" "./{}" \;
mogrify -strip *.jpg
jpegoptim -s -m 75 *.jpg

find . -iname \*.jpeg -exec convert -verbose -quality 75 -resize "1080x1080^" "{}" "./{}" \;
mogrify -strip *.jpeg
jpegoptim -s -m 75 *.jpeg
