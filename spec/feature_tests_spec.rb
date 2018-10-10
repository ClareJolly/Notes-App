require 'note'
require 'notebook'

describe 'Features' do

  let(:notebook3)    {double :notebook, :title => "Notebook", :all_notes => []}
  let(:note1)        {double :note1, :notebook => notebook3, :title => "Title", :body => "body" }
  let(:note2)        {double :note2, :notebook => notebook3, :title => "Title2", :body => "body2" }
  let(:note3)        {double :note3, :notebook => notebook3, :title => "Title3", :body => "body3" }

  it 'create notebook' do
    # notebook = Notebook.new("Notebook")
    expect(notebook3.title).to eq "Notebook"
  end

  it 'displays note titles' do
    notebook = Notebook.new("Notebook")
    allow(notebook).to receive(:all_notes).and_return([note1, note2, note3])
    expect(notebook.note_titles(notebook.all_notes)).to eq "Title\nTitle2\nTitle3"
  end

  it 'get note body from title' do
    notebook = Notebook.new("Notebook")
    # note = Note.new(notebook, "Title", "body")
    # note2 = Note.new(notebook, "Title2", "body2")
    # note3 = Note.new(notebook, "Title3", "body3")
    allow(notebook).to receive(:all_notes).and_return([note1, note2, note3])
    # notebook.all_notes = [note1, note2, note3]
    expect(notebook.note_body("Title3",notebook.all_notes)).to eq "body3"
  end

  it 'create note' do
    # notebook = Notebook.new("Notebook")
    # note = Note.new(notebook, "title", "body")
    expect(note1.title).to eq "Title"
  end
end
