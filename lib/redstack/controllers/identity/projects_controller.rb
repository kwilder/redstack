module RedStack
module Controllers
module Identity
    
  class ProjectsController
    
    include RedStack::Models::Identity
    
    attr_reader :session,
                :items
    
    def initialize(options={})
      @session = options[:session]
    end
    
    def find
      @items = Project.find(session: session).map { |p| ProjectController.new(model: p, session: session) }
      self
    end
    
    def first
      items.first
    end
    
    def length
      items.length
    end
    
  end # class ProjectsController

end # module Identity
end # module Controllers
end # module RedStack