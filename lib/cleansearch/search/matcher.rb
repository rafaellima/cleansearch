class Matcher
      
      attr_accessor :attribute
      
        def initialize(method_sym)
          #pattern for method find_
          if method_sym.to_s =~ /^find_(.*)$/
            @attribute = $1.to_sym
          end
        end

        def match?
          @attribute != nil
        end
end