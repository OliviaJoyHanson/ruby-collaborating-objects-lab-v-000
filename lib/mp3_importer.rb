require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob(@path){|filename|
    filename}
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end




end
