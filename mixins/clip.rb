class Clip
  def play
    puts "Playing #{object_id}..."
  end
end

module AcceptComments
  def comments
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end
end

class Video < Clip
  include AcceptComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptComments
  attr_accessor :beat_per_minute
end

class Photo
  include AcceptComments

  def show
    puts "Displaying #{object_id}..."
  end
end
