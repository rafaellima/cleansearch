require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe 'system class behavior'
  
  it 'should ensure that every object who inherit from activerecord has the association with CleanSearch::Search:MethodMissing' do
    User.should be_kind_of(CleanSearch::Search::MethodMissing)
  end
  
end

describe 'finder basic clauses' do
  
  before do
    @match = Matcher.new(:find_first_name)
  end
  
  it 'should have attribute :first_name' do
    @match.attribute.should == :first_name
  end

  it 'should be a match' do
    @match.should be_a_match
  end
  
end

