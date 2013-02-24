#!/bin/bash

locale_simple_scraper --only share/core/ \
	--only share/site/$1/ >/tmp/$1.po

scp /tmp/$1.po ddgc@dukgo.com:~/

ssh -q -t ddgc@dukgo.com "(
	. ~/perl5/perlbrew/etc/bashrc &&
	. ~/ddgc_config.sh &&
	cd live &&
	script/ddgc_po2token_im.pl --po ~/$1.po --target ~/$1.json
)"

if [ "$2" == "yesimportthis" ]
then
	ssh -q -t ddgc@dukgo.com "(
		. ~/perl5/perlbrew/etc/bashrc &&
		. ~/ddgc_config.sh &&
		cd live &&
		script/ddgc_token_imex.pl --import ~/$1.json --domain duckduckgo-$1
	)"
else
	ssh -q -t ddgc@dukgo.com "(
		. ~/perl5/perlbrew/etc/bashrc &&
		. ~/ddgc_config.sh &&
		cd live &&
		script/ddgc_token_imex.pl --import ~/$1.json --dry --overview --missing --domain duckduckgo-$1
	)"
fi
