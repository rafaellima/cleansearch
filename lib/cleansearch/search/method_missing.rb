module CleanSearch
    class Search
      module MethodMissing
      
        def find(conditions = {})
          #to do:
        end
      
        def self.method_missing(method_sym, *arguments, &block)
          match = Matcher.new(method_sym)
          if match.match?
            dynamic_finder(method_sym, match.attribute)
            send(method_sym, arguments.first)
          else
            super
          end
        end
        
        def self.respond_to?(method_sym, include_private = false)
          if Matcher.new(method_sym).match?
            true
          else
            super
          end
        end
        
        protected
        
        #caching calls to method_missing
        def self.define_dynamic_finder(finder, attribute)
            class_eval <<-RUBY
              def #{finder}(#{attribute}) 
                find(:#{attribute} => #{attribute})
              end
            RUBY
          end
        
      end
    end
end

