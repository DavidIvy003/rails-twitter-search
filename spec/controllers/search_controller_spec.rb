require 'spec_helper'

describe SearchController do

  describe "GET 'twitter'" do
    it "returns http success" do
      get 'twitter'
      response.should be_success
    end
  end
end
