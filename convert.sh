INPUT_FILES="/Users/fuji/Documents/shared/Source_Video/animals/*"
OUTPUT="/Users/fuji/Documents/shared/Source_Video/animals_1"

for filename in $INPUT_FILES; do
	base_name=$(basename "$filename")

	ffmpeg -i "$filename" "$OUTPUT/$base_name.mp4"
done