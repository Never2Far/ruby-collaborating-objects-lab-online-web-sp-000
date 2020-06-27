require 'pry'

class MP3Importer


attr_accessor :path

def initialize(path)

@path = path
@filenames = []

end



def files
  Dir.each_child(@path) { |filename|
if filename[-4..-1] == ".mp3"
   @filenames << filename
 end
  }
end

def import
  self.files
  @filenames.each {|filename|
    Song.new_by_filename(filename)
  }
end






end
