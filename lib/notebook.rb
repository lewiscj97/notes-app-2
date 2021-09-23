require_relative 'note'

class Notebook
  def initialize
    @notes = []
  end

  attr_reader :notes

  def add(title, body)
    @notes.push(Note.new(title, body))
  end
end