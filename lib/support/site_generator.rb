class SiteGenerator
  attr_accessor :rendered_path

  def initialize(rendered_path)
    self.rendered_path = rendered_path
  end

  def build_index
    render("index.html.erb")
  end

  def render(erb_file)
    template = File.read("./app/views/#{erb_file}")
    result = ERB.new(template).result(binding)
    file = File.new("#{rendered_path}/#{erb_file.split(".erb").first}")
    file.write(result)
  end

end