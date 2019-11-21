class Project
    attr_reader :title 
    def initialize(title)
        @title = title 
    end 


    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end 

    def backers
        # a = ProjectBacker.all.map do |pb|
        #     pb.project == self
            
        # end 

        # a.map{|a|a.backer}

        ProjectBacker.all.select{|pb| pb.project == self}.map{|i| i.backer}




    end 

end
