require 'pry'
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # binding.pry
        ProjectBacker.all.select{|inst| inst.backer == self}.map{|inst| inst.project}
    end
end