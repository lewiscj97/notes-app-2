require_relative 'note'

class Notebook
  def initialize
    @notes = []
  end

  attr_reader :notes

  def add(title, body)
    @notes.push(Note.new(title, body))
  end

  def titles
    titles = @notes.map {|note| note.title}
  end

  def show_note(title)
    format_note(@notes.find {|note| note.title == title})
  end

  private

  def format_note(note)
    "Title: #{note.title}, Body: #{note.body}"
  end
end