require "cleansearch/search/logic"
require "cleansearch/search/method_missing"
require "cleansearch/search/matcher"
require "cleansearch/search"
require "active_record"

ActiveRecord::Base.extend(CleanSearch::Search::MethodMissing)