#!/bin/bash

# convert ipython notebook into python script
jupyter nbconvert --to python /home/ubuntu/fantasy_basketball_project/scraper/team_points_summary.ipynb
echo "Converted Python"

# runs newly created python script
python /home/ubuntu/fantasy_basketball_project/scraper/team_points_summary.py
echo "Executed Python"

# Moves all standings to dropbox uploader
cp -r /home/ubuntu/fantasy_basketball_project/scraper/data/standings/ /home/ubuntu/Dropbox-Uploader/
echo "Moved Files to Dropbox"

# Uploads files in dropbox uploader
/home/ubuntu/Dropbox-Uploader/dropbox_uploader.sh -s upload Dropbox-Uploader/standings/ basketball_standings/
echo "Uploaded new files to dropbox"

# Killall chrome and chromedrivers
killall /home/ubuntu/fantasy_basketball_project/chromedriver
killall /opt/google/chrome/chrome
