# move with filename rules

for i in {0..20} do
	mv "./source_directory/${i}_90"* "./target_directory"
	#                      ^^^^^^^ The filename rules
done

# move with file extension

for file in *.mp4; do
	mv "./source_dircetory/${file}" "./target_directory/"
	# Or, you can update the file name
	mv "./${file} "./prefix_${file}"
done
