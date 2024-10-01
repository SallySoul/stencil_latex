echo "*** CODE COUNT"
TEX_FILES=`fd '.*tex'` 
echo "${TEX_FILES}\n../../packages.tex\n../../slides_formatting.tex" | \
  xargs wc -l

echo "*** IMAGE COUNT"
echo "${TEX_FILES}" | \
  xargs rg '.*png' | wc
