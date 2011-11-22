require 'rspec'
require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
ActiveRecord::Base.configurations = true

ActiveRecord::Schema.verbose = false
ActiveRecord::Schema.define(:version => 1) do

  create_table :users do |u|
    u.datetime :created_at
    u.datetime :updated_at
    u.string :name
    u.string :username
    u.string :email
  end
  
end


  # Requires supporting files with custom matchers and macros, etc,
  # in ./support/ and its subdirectories.
  #Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'cleansearch'

RSpec.configure do |config|
  config.before(:each) do
    
    class ::User < ActiveRecord::Base
    end
    
    ::User.destroy_all
    
  end
  
  config.after(:each) do
      Object.send(:remove_const, :User)
    end
  
end




