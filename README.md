# Notes App

This is an app to record notes in a notebook which was built using a combination of BDD and TDD.

Each note has a title and a body, and the notebook can display the titles of all the notes, show the title and body for a specific note and can also edit the body of a note given its title.

The app can be run in IRB and there are exceptions for if the user tries to show or edit a note and the title does not exist in the notebook.

## Setup

1. Clone the repo
2. Run `gem install bundler`
3. Run `bundle` to install the gems
4. Run `irb -r "./lib/notebook.rb"` to run the application in IRB

## Usage

```ruby
# create a new notebook
> notebook = Notebook.new

# add a new note
> notebook.add("This is the title", "And this is the body")

# show all titles
> notebook.titles
=> ["This is the title"]

# show the title and body of a note, given the title
> notebook.show_note("This is the title")
=> "Title: This is the title, Body: And this is the body"

# edit the body of a note given its title
> notebook.edit_note("This is the title", "this is the new body")
=> "Title: This is the title, Body: this is the new body"
```
