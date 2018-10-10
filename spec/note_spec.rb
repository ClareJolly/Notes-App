require 'note'

describe 'Note' do
  describe 'Set up' do
    it 'create note' do
      note = Note.new(Notebook.new("Notebook"), "title", "body")
      expect(note.title).to eq "title"
    end
  end
end
