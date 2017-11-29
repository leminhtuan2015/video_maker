# gem install streamio-ffmpeg
# brew install ffmpeg

require 'json'
require 'streamio-ffmpeg'
require 'fileutils'

class X
	$min_minus = 30
	$DIR = "/Users/fuji/Documents/shared/Source_Video/animals/*"
	$OUTPUT = "data"

	$duration = 0
	$videos = []

	def run_each_files
		dir = Dir[$DIR]
		count_of_file = dir.count

		p "Count of files : #{count_of_file}"

		dir.each.with_index do |file, index|
			puts "============================ #{index}"

			name = File.basename file

		  	puts ">>> url  [#{file}]"
		  	puts "--- name [#{name}]"
		  

		  	movie = FFMPEG::Movie.new(file)

		  	duration = movie.duration / 60

		  	puts "--- duration #{duration}"

			$videos.push "file \'#{file}\'"
		  	$duration = $duration + duration

		  	puts "--- duration now: #{$duration}"

		  	if($duration >= $min_minus || (index == count_of_file - 1))
		  		file_name = $videos[0]
		  		puts ">>> file_name  [#{file_name}]"
		  		extn = File.extname file_name
		  		base_name = File.basename file_name, extn
		  		to_file $videos, base_name

		  		$duration = 0
		  		$videos.clear
		  	end

		end


	end

	def to_file(videos, file_name)
		p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> file_name #{file_name}"

		File.open("#{$OUTPUT}/#{file_name}", "w+") do |f|
		  f.puts(videos)
		end

	end
end


X.new.run_each_files()













