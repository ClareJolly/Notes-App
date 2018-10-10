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
    let(:note1)        { double :note1, :notebook => @notebook }
    let(:note2)        { double :note2, :notebook => @notebook }
    let(:note3)        { double :note3, :notebook => @notebook }

    it 'displays note titles' do
      @notebook.all_notes = [{ :title => "Title", :body => "body" }, { :title => "Title2", :body => "body2" }, { :title => "Title3", :body => "body3" }]
      expect(@notebook.note_titles[2][:title]).to eq "Title3"
    end

    it 'note' do
      @notebook.all_notes = [{ :title => "Title", :body => "body" }, { :title => "Title2", :body => "body2" }, { :title => "Title3", :body => "body3" }, { :title => "TTTTitle4", :body => "body4" }]
      expect(@notebook.note_body("Title3")).to eq "body3"
    end
  end
end
