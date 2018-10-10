require 'notebook'

describe 'Notebook' do

  before(:each) do
    @notebook = Notebook.new("Notebook")
  end

  describe 'Set up' do
    it 'create notebook' do
      expect(@notebook.title).to eq "Notebook"
    end
  end
  describe 'Print list' do
    let(:note1)        { double :note1, :notebook => @notebook, :title => "Title", :body => "body" }
    let(:note2)        { double :note2, :notebook => @notebook, :title => "Title2", :body => "body2" }
    let(:note3)        { double :note3, :notebook => @notebook, :title => "Title3", :body => "body3" }

    it 'displays note titles' do
      @notebook.all_notes = [note1, note2, note3]
      expect(@notebook.note_titles).to eq "Title\nTitle2\nTitle3" 
    end

    it 'note' do
      @notebook.all_notes = [note1, note2, note3]
      expect(@notebook.note_body("Title3")).to eq "body3"
    end
  end
end
