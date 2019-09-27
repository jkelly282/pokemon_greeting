if [ $(date '+%H') -gt 12 ]
then
    t=Afternoon
else
    t=Morning
fi
weather=$(curl wttr.in | head -8)
fact=$(sed -n $((1 + RANDOM % $(wc -l < .facts.txt)))p < .facts.txt)
echo -e "Good $t ${USER}\n\
	Did you know that...\n\
	${fact}\n\
	Hope you have a good day!" \
| pokemonsay
