class Project
    attr_reader :title    

    def initialize(name)
        @title = name
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        ProjectBacker.all.select{|pb| pb.project == self}.map{|i| i.backer }
    end

end