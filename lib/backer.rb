require 'pry'

class Backer
  
  attr_reader :name, :backed_projects
  
  @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  
  def back_project(project)
    @backed_projects << project
    Project.all.select{ |p| p.add_backer(self) if self.backed_projects.include?(p)}
  end
  
  def self.all
    @@all
  end
  
end