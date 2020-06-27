require 'pry'

class MP3Importer


attr_accessor :path

def initialize(path)

@path = path
@filenames = []

end



def files
  Dir.each_child(`#{@path}/mp3s`) { |filename|
if filename[-5..0] == ".mp3"
   @filenames << filename[0..-5]
 end
  }
end

def import
  files
  @filenames.each {|filename|
    Song.new_by_filename(filename)
  }
end






end
