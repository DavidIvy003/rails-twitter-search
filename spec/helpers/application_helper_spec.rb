require 'spec_helper'

describe 'ApplicationHelper' do 
  describe 'page is home' do
    it 'should return title' do
      helper.full_title('Help').should == 'Tweeter Search | Help'
    end
  end
end