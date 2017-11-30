INPUT="/Users/fuji/Documents/shared/Source_Video/animals/5 African Animals Leopard vs Warthog, Leopard Attack, African Safari Animals-S-AkmZzIC5I.mkv"

/Applications/VLC.app/Contents/MacOS/VLC $INPUT :sout=#transcode{vcodec=mp4v,acodec=mp4a,ab=128,channels=2,samplerate=44100}:file{dst=output.mp4}
