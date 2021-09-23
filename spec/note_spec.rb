require 'note'

describe Note do
  it "creates a new note with a title and a body" do
    note = Note.new("This is the title", "And this is the body")
    expect(note.title).to eq "This is the title"
    expect(note.body).to eq "And this is the body"
  end
end