class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.map{|pb| pb.backer == self ? pb.backer : nil}
        # ProjectBacker.all.select{|inst| inst.project == self}.map{|inst| inst.backer}
    end
end