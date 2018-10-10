class Note
  attr_reader :title, :body, :notebook
  def initialize(notebook, title, body)
    @notebook = notebook
    @title = title
    @body = body
    @notebook.all_notes << { title: @title, body: @body }
  end
end
