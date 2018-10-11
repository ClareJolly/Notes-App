require 'note'
require 'notebook'

describe 'Features' do

  it 'create notebook' do
    notebook = Notebook.new("Notebook")
    expect(notebook.title).to eq "Notebook"
  end

  it 'displays note titles' do
    notebook = Notebook.new("Notebook")
    note = Note.new(notebook, "Title", "body")
    note2 = Note.new(notebook, "Title2", "body2")
    note3 = Note.new(notebook, "Title3", "body3")
    expect(notebook.note_titles(notebook.all_notes)).to eq "Title\nTitle2\nTitle3"
  end

  it 'get note body from title' do
    notebook = Notebook.new("Notebook")
    note = Note.new(notebook, "Title", "body")
    note2 = Note.new(notebook, "Title2", "body2")
    note3 = Note.new(notebook, "Title3", "body3")
    expect(notebook.note_body("Title3", notebook.all_notes)).to eq "body3"
  end

  it 'create note' do
    notebook = Notebook.new("Notebook")
    note = Note.new(notebook, "Title", "body")
    expect(note.title).to eq "Title"
  end
end
