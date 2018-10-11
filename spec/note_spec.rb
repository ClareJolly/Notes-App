require 'note'

describe 'Note' do
  describe 'Set up' do
    let(:notebook)        { double :notebook, :title => "Title", :all_notes => [] }
    it 'create note' do
      note = Note.new(notebook,"this is a note title", "this is a note body")
      expect(notebook.all_notes[0].title).to eq "this is a note title"
    end
  end
end
