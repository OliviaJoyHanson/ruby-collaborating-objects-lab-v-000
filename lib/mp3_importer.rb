require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("@path") do |filename|
    binding.pry
    filename
  end
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end




end
