require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe 'dynamic find' do
  
  it 'should ensure that every object who inherit from activerecord is a kind of CleanSearch' do
    User.should be_kind_of(CleanSearch)
  end
  
  it 'should call the custom method_missing' do
    User.should_receive(:find).with(:first_name => 'Rafael')
    User.find_first_name('Rafael')
  end
  
end

