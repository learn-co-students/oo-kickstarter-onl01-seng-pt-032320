# Project - ::new
#   takes a title on initialization, accessible through an attribute reader (FAILED - 1)
#   initializes with a @backers attribute, an empty array


class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  # #add_backer
  # accepts a Backer as an argument and stores it in a backers array

  # More Advanced #add_backer
  # also adds the project to the backer's backed_projects array
  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end
end
