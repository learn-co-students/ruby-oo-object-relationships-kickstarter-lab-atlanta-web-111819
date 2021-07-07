require 'pry'

class Backer 
    attr_reader :name
    
    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self )
    end 

    def backed_projects 
        apple = ProjectBacker.all.select do  |pb|
            pb.backer == self
        end 
            apple.map {|i| i.project }
        # single line using select & map
        # ProjectBacker.all.select{|pb| pb.backer == self}.map{|pb| pb.project}
        # single line using map BABAY!
        # ProjectBacker.all.map{|pb| pb.backer == self ? pb.project : nil}.compact
    end

end