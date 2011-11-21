class User < ActiveRecord::Base
  
  def initialize(user_name)
    @username = user_name
  end
  
  def name
    puts "The user name is: #{user_name}"
  end
  
end