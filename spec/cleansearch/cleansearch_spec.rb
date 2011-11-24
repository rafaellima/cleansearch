require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe 'dynamic find_first' do
  
  before :each do
    @user = User.new
  end
  
  it 'should ensure that user (or any other object) is a kind of ActiveRecord::Base' do
    @user.should be_kind_of(CleanSearch::Search)
  end
  
  it 'should ensure that this object (user) has methods starting with find_ clause' do
    @user.should_revieve(:find).with(:first_name => 'Foo')
  end
  
end

