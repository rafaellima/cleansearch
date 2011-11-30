module CleanSearch
    class Search
      module MethodMissing
      
        def find(conditions = {})
          
        end
      
        def method_missing(method_sym, *arguments, &block)
          match = Matcher.new(method_sym)
          if match.match?
            find(match.attribute => arguments.first)
          else
            super
          end
        end
        
        def respond_to?(method_sym, include_private = false)
          if Matcher.new(method_sym).match?
            true
          else
            super
          end
        end
        
      end
    end
end

