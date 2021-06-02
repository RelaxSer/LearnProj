#!/bin/bash
echo -e "[general]" >> extensions.conf
echo -e "[blobals]" >> extensions.conf
echo -e "\n[sets]" >> extensions.conf

for ((c=100; c<200; c++)) do
	echo -e "exten => ${c},1,Dial(PJSIP/${c})" >> extensions.conf
done
echo -e "exten => 200,1Answer()" >> extensions.conf
echo -e "    same => n,Playback(hello-world)" >> extensions.conf
echo -e "    same => n,Hangup()" >> extensions.conf
