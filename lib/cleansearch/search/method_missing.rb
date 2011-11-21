module CleanSearch
  class Search
    
    #module MethodMissing
      
      # Pretend this is a real implementation
        def find(conditions = {})
        end

        # Define on self, since it's a class method
        def method_missing(method_sym, *arguments, &block)
          # the first argument is a Symbol, so you need to_s it if you want to pattern match
          if method_sym.to_s =~ /^find_(.*)$/
            find($1.to_sym => arguments.first)
          else
            super
          end
        end
        
        def respond_to?(method_sym, include_private = false)
            if method_sym.to_s =~ /^find_(.*)$/
              true
            else
              super
            end
        end
     #end
  end
  
end