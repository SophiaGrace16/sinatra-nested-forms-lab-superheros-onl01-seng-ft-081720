class Member
    attr_accessor :bio, :name, :power

    @@all=[]

    def initialize(args)
        @bio = args[:bio]
        @name = args[:name]
        @power = args[:power]
        @@all << self
    end

    def self.all
        @@all
    end

end