require 'pry'
class Project
  
  attr_reader :title, :backers
  
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end
  
  def add_backer(name)
    self.backers << name
  end
  
  def self.all
    @@all
  end
  
  
end