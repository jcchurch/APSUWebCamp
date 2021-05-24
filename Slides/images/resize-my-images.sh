for i in originals/*.png; do convert $i -resize x250 $(basename $i); done
