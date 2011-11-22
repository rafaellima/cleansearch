require 'cleansearch/search/method_missing'
require 'active_record'

#ActiveRecord::Base.extended(CleanSearch::Search::MethodMissing)
ActiveRecord::Base.__send__(:include, CleanSearch::Search::MethodMissing)