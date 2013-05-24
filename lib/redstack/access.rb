module RedStack

  class Access
    attr_reader :access
    protected :access
    
    def initialize(str)
      @access = JSON.parse(str)
    end
    
    def ==(other)
      access == other.access
    end    
    
  end

end
