class Family
  SVG_BASE = "lib/"

  attr_reader :name, :path, :repo_url, :description, :title, :author_handle, :author_url

  def initialize(attributes)
    @title = attributes.fetch("title")
    @path = attributes.fetch("path")
    @repo_url = attributes.fetch("repo_url")
    @description = attributes.fetch("description")
    @author_handle = attributes.fetch("author_handle")
    @author_url = attributes.fetch("author_url")
  end

  def files
    Dir.entries(SVG_BASE + path) - [".", ".."]
  end
end
