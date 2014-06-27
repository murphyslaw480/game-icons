mkdir -p png
# convert svg/*.svg to png/*.png
for svgfile in svg/*.svg
do
  filename="${svgfile##*/}"
  basename="${filename%.*}"
  pngfile="png/$basename.png"
  inkscape -z -e ${pngfile} -w 64 -h 64 ${svgfile}
done
