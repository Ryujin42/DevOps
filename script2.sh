#!/bin/sh

crontab -i | { cat; echo "*/5 * * * * /bin/bash $HOME/informatique/devops/script1.sh $HOME/personnages_$(date +%Hh%M)"; } | crontab -

