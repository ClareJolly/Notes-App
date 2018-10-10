class Notebook
  attr_reader :title # , :all_notes
  attr_accessor :all_notes

  def initialize(title = "Notebook")
    @title = title
    @all_notes = []
  end

  def note_titles
    @all_notes.each { |x| puts x[:title] }
  end

  def note_body(title)
    # p @all_notes
    @all_notes.each do |x|
      return x[:body] if x[:title] == title
    end
  end
end
