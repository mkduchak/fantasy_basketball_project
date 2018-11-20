#!/bin/bash

# convert ipython notebook into python script
jupyter nbconvert --to python team_points_summary.ipynb

# runs newly created python script
python team_points_summary.py

# Moves all standings to dropbox uploader
cp -r /home/ubuntu/fantasy_basketball_project/scraper/data/standings/ /home/ubuntu/Dropbox-Uploader/

# Uploads files in dropbox uploader
/home/ubuntu/Dropbox-Uploader/dropbox_uploader.sh -s upload standings/ basketball_standings/
