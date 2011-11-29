module CleanSearch
    class Search
      module MethodMissing
      
        def find(conditions = {})
          #should make the logic
          
        end
      
        def method_missing(method_sym, *arguments, &block)
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
        
        
      end
    end
end

