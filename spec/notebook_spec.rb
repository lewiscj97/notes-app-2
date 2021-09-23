require 'notebook'
require 'note'

describe Notebook do
  describe "#add" do
    it "adds a new note to the notebook" do
      subject.add("This is the title", "and this is the body")
      subject.notes.each do |note|
        expect(note).to be_a(Note)
        expect(note.title).to eq "This is the title"
        expect(note.body).to eq "and this is the body"
      end
    end
  end

  describe "#titles" do
    it "shows a list of titles" do
      subject.add("This is the title", "and this is the body")
      subject.add("This is a new title", "and this is the body")
      expect(subject.titles).to eq ["This is the title", "This is a new title"]
    end
  end

  describe "#show_note" do
    it "shows the title and body of a note when passed a title" do
      subject.add("This is the title", "and this is the body")
      expect(subject.show_note("This is the title")).to eq "Title: This is the title, Body: and this is the body"
    end

    it "tells the user the note doesn't exist if the title doesn't match" do
      expect {subject.show_note("This is the title")}.to raise_error("Note doens't exist")
    end
  end

  describe "#edit_note" do
    it "lets the user edit the body of a note when passed a title" do
      subject.add("This is the title", "and this is the body")
      subject.edit_note("This is the title", "this is my new body because the last one sucked")
      expect(subject.show_note("This is the title")).to eq "Title: This is the title, Body: this is my new body because the last one sucked"
    end
  end
end