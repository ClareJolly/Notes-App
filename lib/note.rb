class Note
  attr_reader :title, :body, :notebook
  def initialize(notebook, title, body)
    @notebook = notebook
    @title = title
    @body = body
    @notebook.all_notes << self
  end

end
