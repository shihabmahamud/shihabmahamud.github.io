current_dir=$PWD
cd src
hugo -d ../
cd $current_dir
git add . && echo "git adding... Done." && read -p "Please enter commit massages: " com_mas && git commit -m "$com_mas" && echo "git commiting... Done." && git push && echo "git pushing.... Done."