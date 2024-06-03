#!/bin/bash

mkdir -m 755 "$1/personnages"
mkdir -m 775 "$1/personnages/mascottes"
mkdir -m 755 -p "$1/personnages/super heros/femmes"
mkdir -m 775 -p "$1/personnages/super heros/femmes/cape/batgirl"
mkdir -m 775 "$1/personnages/super heros/femmes/cape/wonderwoman"
mkdir -m 775 -p "$1/personnages/super heros/femmes/sans cape/electra"
mkdir -m 775 "$1/personnages/super heros/femmes/sans cape/superwoman"
mkdir -m 755 "$1/personnages/super heros/hommes"
mkdir -m 775 "$1/personnages/super heros/hommes/cape"
mkdir -m 775 "$1/personnages/super heros/hommes/sans cap"

files=(
	"$1/personnages/mascottes/beastie"
	"$1/personnages/mascottes/bibendum"
	"$1/personnages/mascottes/mario"
	"$1/personnages/mascottes/sonic"

	"$1/personnages/super heros/hommes/cape/batman"
	"$1/personnages/super heros/hommes/cape/superman"
	"$1/personnages/super heros/hommes/cape/thor"
	"$1/personnages/super heros/hommes/sans cap/antman"
	"$1/personnages/super heros/hommes/sans cap/daredevil"
	"$1/personnages/super heros/hommes/sans cap/linuxman"
	"$1/personnages/super heros/hommes/sans cap/spiderman"

)

for file in "${files[@]}"; do
	touch "$file" && chmod 611 "$file"
done

ls -lR $1/personnages

