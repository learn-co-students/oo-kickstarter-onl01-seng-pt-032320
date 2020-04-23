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
    #binding.pry
    #Project.all.select{ |p| p.add_backer(self) if self.backed_projects.include?(p)}
    #Backer.all.select{ |b| b.back_project(self) if b.backed_projects.include?(self)}
    #Backer.all.select{ |b| b.back_project(b) if self.backers.include?(b) }
    #Backer.all.select{ |b| b.back_project(self) if self.backers.name.include?(b.name)}
    #Backer.all.select{ |b| b.back_project(self) if b==backer_obj }
  end
  
  def self.all
    @@all
  end
  
  
end
#adds the project to the backer's backed_projects array
#SELF - Project
#TAKE BACKER_OBJ AND MAKE IT BACK SELF-PROJECT
