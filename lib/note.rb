class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title
  attr_accessor :body
end