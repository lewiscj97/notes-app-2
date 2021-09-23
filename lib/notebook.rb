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
    format_note(find_note(title))
  end

  def edit_note(title, new_body)
    find_note(title).body = new_body
  end

  private

  def format_note(note)
    "Title: #{note.title}, Body: #{note.body}"
  end

  def find_note(title)
    @notes.find {|note| note.title == title}
  end
end
