class Project 
attr_reader :backers, :title 

def initialize(title)
   @backers = []
  @title = title
end 

def add_backer(backer)
backers << backer 
 # backer_projects.project << self 
 backer.back_project(self) unless backer.backed_projects.include?(self)
end 

end 


