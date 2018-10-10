require "./lib/notebook.rb"
require "./lib/note.rb"

notebook = Notebook.new("Notebook")
note = Note.new(notebook, "diary entry 1", "this is a test")
note2 = Note.new(notebook, "entry 2", "blah blah blah")
note3 = Note.new(notebook, "3", "cool diary entry")
# notebook.all_notes[2].title = "title3"
notebook.note_titles
puts "Enter a title"
title = gets.chomp
notebook.note_body(title)
