module RedStack
module Models
module Identity
    
  class User
    
    attr_reader :data,
                :session
    
    def self.find(options={})
      session = options[:session]
      
      # TODO: Add logic for actually retrieving data from the backend
      [new(data: {}, session: session)]
    end
    
    def initialize(options={})
      @data = options[:data]
      @session = options[:session]
    end
        
  end # class Project

end # module Identity
end # module Models
end # module RedStack
  
