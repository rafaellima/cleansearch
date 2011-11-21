class ActiveRecord::Base
    
    def self.acts_as(base)
        class_eval %Q{
          def method_missing(method, *args, &blk)
            #{base}.send(method, *args, &blk)
          rescue NoMethodError
            super
          end
        }
    end
    
end