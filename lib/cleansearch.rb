require "cleansearch/search/method_missing"
require "cleansearch/search"
require 'active_record'

ActiveRecord::Base.extend(CleanSearch::Search::MethodMissing)