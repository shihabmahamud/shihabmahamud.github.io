#! /bin/bash

# rm -rf about about-hugo about-us archives categories contact img index.html index.xml p page post scss search sitemap.xml tags ts 404.html casts css js

# ./deploy hugo
if [[ $1 == hugo ]]
then
current_dir=$PWD \
&& cd src \
&& hugo -d ../ \
&& cd $current_dir
fi

echo "git adding..." \
&& git add . \
&& echo "git commiting..." \
&& read -p "Massages: " com_mas \
&& git commit -m "$com_mas" \
&& echo "git pushing..." \
&& git push
