require 'notebook'

describe 'Notebook' do

  before(:each) do
    @notebook = Notebook.new("Notebook")
  end

  describe 'Set up' do
    it 'create notebook' do
      # notebook = Notebook.new("Notebook")
      # puts @notebook.title
      expect(@notebook.title).to eq "Notebook"
    end
  end
  describe 'Print list' do
    let(:note1)        { double :note1, :notebook => @notebook }
    # let(:note1)        {double :note1, :hash => "{title: = ""Title"", body: = ""body"" }" }
    # let(:note2)        {double :note2, :hash => "{title: = ""Title2"", body: = ""body2"" }" }
    # let(:note3)        {double :note3, :hash => "{title: = ""Title3"", body: = ""body3"" }" }
    let(:note2)        { double :note2, :notebook => @notebook }
    let(:note3)        { double :note3, :notebook => @notebook }

    it 'displays note titles' do
      # notebook = Notebook.new("Notebook")
       # p note1.hash
      # name=(str)
      # allow(note1).to receive(:hash).and_return({title: = "Title", body: = "body" })
      # allow(note2).to receive(:hash).and_return({title: = "Title2", body: = "body2" })
      # allow(note3).to receive(:hash).and_return({title: = "Title3", body: = "body3" })
      @notebook.all_notes = [{ :title => "Title", :body => "body" }, { :title => "Title2", :body => "body2" }, { :title => "Title3", :body => "body3" }]
        # p @notebook.all_notes[0]
      # note = Note.new(notebook, "title", "body")
      # note2 = Note.new(notebook, "title2", "body2")
      # note3 = Note.new(notebook, "title3", "body3")
      expect(@notebook.note_titles[2][:title]).to eq "Title3"
    end

    it 'note' do
      # notebook = Notebook.new("Notebook")
      @notebook.all_notes = [{ :title => "Title", :body => "body" }, { :title => "Title2", :body => "body2" }, { :title => "Title3", :body => "body3" }, { :title => "TTTTitle4", :body => "body4" }]
      # note = Note.new(notebook, "title", "body")
      # note2 = Note.new(notebook, "title2", "body2")
      # note3 = Note.new(notebook, "title3", "body3")
      expect(@notebook.note_body("Title3")).to eq "body3"
    end
  end
end
