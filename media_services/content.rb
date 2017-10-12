require 'date'

class Content
  attr_accessor :title, :genre, :run_time, :rating, :comment

  def initialize(item)
    @title = item[:title]
    @genre = item[:genre]
    @run_time = item[:run_time]
    @rating = item[:rating]
    @comment = item[:comment]
  end

end