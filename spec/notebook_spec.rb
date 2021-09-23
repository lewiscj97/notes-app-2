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
end