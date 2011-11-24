require 'cleansearch/search/method_missing'
require 'active_record'

ActiveRecord::Base.__send__(:include, CleanSearch::Search::MethodMissing)
ActiveRecord::Base.extend(CleanSearch::Search::MethodMissing)