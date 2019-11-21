class ProjectBacker
    @@all = []

    attr_reader :backer, :project

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end