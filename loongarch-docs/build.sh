#!/usr/bin/env sh

if [ ! -f index.html ]; then
  wget -O index.html https://loongson.github.io/LoongArch-Documentation/README-CN.html
fi
if [ ! -f LoongArch-ELF-ABI-CN.html ]; then
  wget -O LoongArch-ELF-ABI-CN.html https://loongson.github.io/LoongArch-Documentation/LoongArch-ELF-ABI-CN.html
fi
if [ ! -f LoongArch-toolchain-conventions-CN.html ]; then
  wget -O LoongArch-toolchain-conventions-CN.html https://loongson.github.io/LoongArch-Documentation/LoongArch-toolchain-conventions-CN.html
fi
if [ ! -f asciidoc-classic.css ]; then
  wget -O asciidoc-classic.css https://darshandsoni.com/asciidoctor-skins/css/asciidoc-classic.css
fi

for i in *.html; do
  sed -i '/<script>/,/<\/script>/d' $i
  sed -i '/<script.*/d' $i
  sed -i '/<title>/a<link rel="stylesheet" type="text/css" href="asciidoc-classic.css"/>' $i
done
