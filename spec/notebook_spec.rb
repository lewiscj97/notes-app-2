require 'note'

describe Notebook do
  describe "#add" do
    note = Note.new("This is the title", "and this is the body")

    subject.add("This is the title", "and this is the body")

    expect(subject.notes).to include note
  end
end