class Project
  
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.project = self
    backer.backed_projects << self
  end
  
  def backers
    @backers
  end
end