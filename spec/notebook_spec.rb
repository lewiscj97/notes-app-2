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
end