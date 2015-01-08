class Family
  SVG_BASE = "source/assets/components/"

  attr_reader :name, :path, :repo_url, :description, :title

  def initialize(attributes)
    @title = attributes.fetch("title")
    @path = attributes.fetch("path")
    @repo_url = attributes.fetch("repo_url")
    @description = attributes.fetch("description")
  end

  def files
    Dir.entries(SVG_BASE + path) - [".", ".."]
  end
end
