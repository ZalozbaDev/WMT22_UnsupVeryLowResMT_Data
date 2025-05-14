#!/bin/bash

rm -rf release/
mkdir -p release/

echo

mkdir release/text_sentences_with_translations/

mkdir release/text_sentences_with_translations/hsb/
mkdir release/text_sentences_with_translations/dsb/

echo "DSB translations sentences"

zcat rohdaten/40194_train_dsb_de.de.gz  > release/text_sentences_with_translations/dsb/WMT2022_sentences.dsb-de.de.txt
zcat rohdaten/40194_train_dsb_de.dsb.gz > release/text_sentences_with_translations/dsb/WMT2022_sentences.dsb-de.dsb.txt

cat release/text_sentences_with_translations/dsb/WMT2022_sentences.dsb-de.de.txt  | wc -l
cat release/text_sentences_with_translations/dsb/WMT2022_sentences.dsb-de.dsb.txt | wc -l

echo "===="
echo

echo "HSB translations sentences"

zcat rohdaten/train.hsb-de.de.gz  > release/text_sentences_with_translations/hsb/WMT2022_sentences.hsb-de.de.txt
zcat rohdaten/train.hsb-de.hsb.gz > release/text_sentences_with_translations/hsb/WMT2022_sentences.hsb-de.hsb.txt

cat release/text_sentences_with_translations/hsb/WMT2022_sentences.hsb-de.de.txt  | wc -l
cat release/text_sentences_with_translations/hsb/WMT2022_sentences.hsb-de.hsb.txt | wc -l

echo "===="
echo

mkdir release/text_without_translations/

mkdir release/text_without_translations/hsb/
mkdir release/text_without_translations/dsb/

echo "DSB monolingual"

zcat rohdaten/66408_DSB_monolingual.txt.gz > release/text_without_translations/dsb/WMT2022_sentences.dsb.txt

cat release/text_without_translations/dsb/WMT2022_sentences.dsb.txt | wc -l

echo "===="
echo

echo "HSB monolingual"

zcat rohdaten/HSB_monolingual.txt.gz > release/text_without_translations/hsb/WMT2022_sentences.hsb.txt

cat release/text_without_translations/hsb/WMT2022_sentences.hsb.txt | wc -l

echo "===="
echo
