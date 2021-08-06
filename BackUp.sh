if [ ! -d DotFiles ]
then
	mkdir DotFiles
fi


while read line
do
	filein=$(echo $line | cut -d '|' -f 1)
	filein=${filein/\~/$HOME}
	fileto=$(echo $line | cut -d '|' -f 2)

	# echo $filein "->" $fileto
	cp -Rfv $filein $fileto
	# echo $i
done < BackUpList.txt

unset filein
unset fileto
