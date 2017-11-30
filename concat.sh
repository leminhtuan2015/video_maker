INPUT_FILES="./data/*"
OUTPUT="./videos"

for filename in $INPUT_FILES; do
	echo "file name : $filename"
	base_name=$(basename "$filename")

	ffmpeg -f concat -safe 0 -i "$filename" -c:v copy "$OUTPUT/$base_name.mp4"

done


