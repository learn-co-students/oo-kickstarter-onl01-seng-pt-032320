require 'pry'
class Project
  
  attr_reader :title, :backers
  
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end
  
  def add_backer(backer_obj)
    self.backers << backer_obj
    Backer.all.select{ |b| b.back_project(self) if !b.backed_projects.include?(self)}
  end
  
  def self.all
    @@all
  end
  
  
end
#adds the project to the backer's backed_projects array
#SELF - Project
#TAKE BACKER_OBJ AND MAKE IT BACK SELF-PROJECT
