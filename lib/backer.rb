class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project_obj)
        @backed_projects << project_obj
        project_obj.backers << self
    end
end