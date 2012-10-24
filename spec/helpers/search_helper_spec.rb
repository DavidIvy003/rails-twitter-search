require 'spec_helper'

describe SearchHelper do

  describe 'valid' do
    it 'empty query should return false' do
      helper.valid('').should == false
    end

    it 'blank query should return false' do
      helper.valid(' ').should == false
    end

    it 'real query should return true' do
      helper.valid('huzzah ').should == true
    end
  end

  describe 'send_query' do
    it 'test query should return 30 results' do
      helper.send_query('test').count.should == 10
    end

    it 'test query w/ supplied number should return correct results' do
      helper.send_query('test', nil, nil, 100).count.should == 100
    end

    it 'randomized result should return 0' do
      random_query = SecureRandom.hex(10)
      helper.send_query(random_query).count.should == 0
    end
  end

end