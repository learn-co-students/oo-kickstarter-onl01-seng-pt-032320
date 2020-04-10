class Project
    attr_reader :title, :backers
    @@all = Array.new

    def initialize(title)
        @title = title
        @backers = Array.new
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        @backers << backer
        if backer.backed_projects.include?(self) == false
            backer.back_project(self)
        end
    end
end