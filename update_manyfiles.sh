# Update filename, that contain more than 2 rules
# Using regular expression

for file in *.mp4; do
	number=$(echo "$file" | grep -o -E '^[0-9]+')
	# echo "$file" returns the filename
	# '|' (the pipe character) get result of left, throw to right
	# "grep" command for regulare expression
	# 	"-o" means 'only matches the pattern"
	#	"-E" allows extended regular expression
	#	"^[0-9]+" 
	#		"^" beginning of the filename
	#		"[0-9]" chracters between 0-9
	#		"+" get one or more consecutive digits

	if [[ $number -lt 10 ]]; then
		new_name="20${file}"
	else
		new_name="2${file"
	fi

	mv "$file" "$new_name"
done
