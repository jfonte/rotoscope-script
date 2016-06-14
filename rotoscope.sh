# stupid oneliner for image rotoscoping
# based on http://kansenzone.blogspot.fr/2008/05/automatic-rotoscoping.html
# to make this work on osx, use rsvg https://superuser.com/questions/134679/command-line-application-for-converting-svg-to-png-on-mac-os-x

FILE=$1
autotrace $FILE -output-format svg -color-count 20 -despeckle-level 20 -filter-iterations 10 -output-file tmp.svg
# convert -quality 100 tmp.svg new-$FILE
rsvg-convert tmp.svg > new-$FILE # use this to make it work on osx
rm tmp.svg
