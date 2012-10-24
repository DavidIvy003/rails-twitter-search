require 'spec_helper'

describe "Homes" do
  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'Tweeter Search') }
    it { should have_selector('title',    text: 'Tweeter Search') }

    it 'has a form posting to /search/twitter' do
      response.should have_selector("form[action=/search/twitter]")
    end

    %w(instant_search).each do |attr|
      it "has an address field for #{attr}" do
        response.should have_selector("input[name*=#{attr}]")
      end
    end

    it "should not return results" do
        content = ""
        fill_in "search", with: content
        click_button "Search"
        #current_path.should == root_path
        page.should_not have_selector('li.tweet', content: content)
        page.should_not have_selector('div.pagination', content: 'active')
    end

    it "should not return results" do
        content = "mintmarket"
        fill_in "search", with: content
        click_button "Search"
        #current_path.should == root_path
        page.should have_selector('li.tweet', content: 'rgergerg')
        page.should_not have_selector('div.pagination li.active')
    end

    it "should return results" do
        content = "test"
        fill_in "search", with: content
        click_button "Search"
        #current_path.should == root_path
        page.should have_selector('ul#tweets', content: content)
        page.should have_selector('div.pagination', content: 'active')
        #response.should render_template('pages/home')
    end

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Search help') }
    it { should have_selector('title',    text: 'Tweeter Search | Help') }

  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title',    text: 'Tweeter Search | About') }

  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title',    text: 'Tweeter Search | Contact') }

  end

end