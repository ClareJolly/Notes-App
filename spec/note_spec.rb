require 'note'

describe 'Note' do
  describe 'Set up' do
    it 'create note' do
      note = Note.new(Notebook.new("Notebook"), "title", "body")
      expect(note.title).to eq "title"
    end
  end

  # describe 'Display' do
  #   # it 'note' do
  #   #   notebook = Notebook.new("Notebook")
  #   #   note = Note.new(notebook, "title", "body")
  #   #   note2 = Note.new(notebook, "title2", "body2")
  #   #   note3 = Note.new(notebook, "title3", "body3")
  #   #   expect(show_note("title")).to eq "body"
  #   # end
  # end
end
