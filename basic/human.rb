module Human
    attr_accessor :name, :age, :height 
    def run 
        ## we can access the properties
        ## by self.property
        puts self.name + " runs"
    end 
end 