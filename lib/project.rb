class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    Backer.new(name)
    @backers << name
    name.backed_projects << self
  end


end
