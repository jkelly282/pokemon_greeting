if [ $(date '+%H') -gt 12 ]
then 
	t=Afternoon
else
       	t=Morning 
fi 
printf "Good $t ${USER} \n Did you know that... $(sed -n $((1 + RANDOM % $(wc -l < facts.txt)))p < facts.txt) \n hope you have a good day !" | pokemonsay
