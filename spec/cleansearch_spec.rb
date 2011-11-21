require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

 
describe 'dynamic find_first' do
  
  before :all do
     @search =  CleanSearch::Search.new
     @user = User.new('Rafael')
   end
  
  it 'should call find(:first_name => first_name)' do
    @search.should_receive(:find).with(:first => 'Method')
    @search.find_first('Method')
  
  it 'should ensure that any new object has find clauses in his methods'
    @user.should_recieve(:find).with(:like => "Rafael")
    
  end
  
end

