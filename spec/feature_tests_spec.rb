require 'note'
require 'notebook'

describe 'Features' do

  # let(:notebook)    {double :notebook, :title => "Notebook"}
  # let(:note)        {double :note1, :notebook => notebook, :title => "Title", :body => "body" }
  # let(:note)        {double :note2, :notebook => notebook, :title => "Title2", :body => "body2" }
  # let(:note)        {double :note2, :notebook => notebook, :title => "Title3", :body => "body3" }

  it 'create notebook' do
    notebook = Notebook.new("Notebook")
    expect(notebook.title).to eq "Notebook"
  end

  it 'displays note titles' do
    notebook = Notebook.new("Notebook")
    note = Note.new(notebook, "title", "body")
    note2 = Note.new(notebook, "title2", "body2")
    note3 = Note.new(notebook, "title3", "body3")
    expect(notebook.note_titles[2][:title]).to eq "title3"
  end

  it 'get note body from title' do
    notebook = Notebook.new("Notebook")
    note = Note.new(notebook, "title", "body")
    note2 = Note.new(notebook, "title2", "body2")
    note3 = Note.new(notebook, "title3", "body3")
    expect(notebook.note_body("title3")).to eq "body3"
  end

  it 'create note' do
    notebook = Notebook.new("Notebook")
    note = Note.new(notebook, "title", "body")
    expect(note.title).to eq "title"
  end
end
