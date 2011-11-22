require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
 
describe 'dynamic find_first' do
  
  it 'should call find_first using method_missing in the Search class' do
    User.find_first(:username => "name_here").should be_kind_of(CleanSearch::Search)
  end
  
end

