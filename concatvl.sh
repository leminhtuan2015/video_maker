INPUT_FILES="./data/*"
OUTPUT="./videos"

files=()


a="/Users/fuji/Documents/shared/Source_Video/animals_1/5 African Animals Leopard vs Warthog, Leopard Attack, African Safari Animals-S-AkmZzIC5I.mp4"
b="/Users/fuji/Documents/shared/Source_Video/animals_1/5 Unexplained Things Caught On Tape - Shocking Moments Compilation-s4mjAiG88fY.mp4"

# a="/Users/fuji/Documents/shared/Source_Video/animals_1/5 African Animals Leopard vs Warthog, Leopard Attack, African Safari Animals-S-AkmZzIC5I.mp4"
# b="/Users/fuji/Documents/shared/Source_Video/animals_1/5 Unexplained Things Caught On Tape - Shocking Moments Compilation-s4mjAiG88fY.mp4"


file="/Users/fuji/Documents/my/Web/video_maker/data/5 African Animals Leopard vs Warthog, Leopard Attack, African Safari Animals-S-AkmZzIC5I"
while IFS= read line
do
	# echo "$line"
	files+=("$line")
done <"$file"

x=("$a" "$b")

echo "${files[@]}"
echo "___________"
echo "${x[@]}"

base_name="allxxx"

/Applications/VLC.app/Contents/MacOS/VLC "${x[@]}" \
	--sout "#gather:std{access=file,mux=asf,dst=${OUTPUT}/${base_name}.mp4}" --sout-keep