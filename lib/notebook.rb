class Notebook
  attr_reader :title
  attr_accessor :all_notes

  def initialize(title = "Notebook")
    @title = title
    @all_notes = []
  end

  def note_titles(array = @all_notes)
    array.map { |x| x.title }.join("\n")
  end

  def note_body(title,array = @all_notes)
    array.each do |x|
      return x.body if x.title == title
    end
  end
end
