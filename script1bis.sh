#!/bin/bash

mv personnages/super\ heros/hommes/sans cap/linuxman personnages/mascottes/tux -f
mv personnages/super\ heros comics -r

echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman
echo "He lives in Gotham" >> personnages/comics/hommes/cape/batman

echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cap/daredevil
echo "daredevil is a blind comic character" > personnages/comics/hommes/sans\ cap/daredevil

cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cap/daredevil > personnages/mascottes/mixdarbat

sudo useradd -m fanboy
sudo cp -r personnages /home/fanboy
sudo chown -R fanboy:fanboy /home/fanboy/personnages
sudo ln -s /home/fanboy/personnages /home/fanboy/persofanboy

sudo ln -s $HOME/personnages $HOME/perso_$(whoami)

sudo ls -lR /home/fanboy/personnages > 14.txt
grep -v "total" 14.txt > 15.txt

grep -v "cd" $HOME/bash_history | tail -n 250 > myhistory

