
require 'pry'

class Backer 
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project,self)

    end 

    def backed_projects
        a = ProjectBacker.all.select do |pb|
            if pb.backer == self
                pb.project
            end 
        end 

        a.map{|a|a.project}



    end  




end 