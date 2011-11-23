require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../factory')

describe 'dynamic find_first' do
  
  before :all do
    @user = Factory(:user)
  end
  
  it 'should ensure that user (or any other object) is a kind of ActiveRecord::Base' do
    @user.should be_kind_of(ActiveRecord)
  end
  
end

