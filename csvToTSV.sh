find . -type f -name '*.csv' -exec sed -i '' s/,,,// {} +;
find . -type f -name '*.csv' -exec gsed -i 's/,/\t/' {} +;
find . -type f -name '*.csv' -exec gsed -i 's/\(\t.*\)/\U\1/' {} +;
rename 's/(-Table .)?\.csv/\.txt/g' *
rename 's/ /_/g' *
