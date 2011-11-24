require 'rspec'
require 'active_record'

ActiveRecord::Base.establish_connection({
      :adapter => "sqlite3",
      :dbfile => "users.sqlite",
      :database => ":memory:"
})

begin
  ActiveRecord::Schema.drop_table('users')
rescue
  nil
end

ActiveRecord::Schema.define do
  create_table "users", :force => true do |t|
    t.column "name", :string, :limit => 30, :null => false
    t.column "email", :string, :limit => 30, :null => false
  end
end

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'cleansearch'

RSpec.configure do |config|
  config.before(:each) do
    
    class User < ActiveRecord::Base
    end
    
    ::User.destroy_all
    
  end
  
  #config.after(:each) do
      #Object.send(:remove_const, :User)
    #end
  
end





