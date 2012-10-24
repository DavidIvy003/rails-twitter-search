require 'spec_helper'

describe "Homes" do
  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'Welcome to Tweeter Search') }
    it { should have_selector('title',    text: 'Tweeter Search') }

    it "should not return results" do
        content = ""
        fill_in "search", with: content
        click_button "Search"

        page.should_not have_selector('li.tweet', content: content)
        page.should_not have_selector('div.pagination', content: 'active')
    end

    it "should not return results" do
        content = "mintmarket"
        fill_in "search", with: content
        click_button "Search"

        page.should have_selector('li.tweet', content: 'rgergerg')
        page.should_not have_selector('div.pagination li.active')
    end

    it "should return results" do
        content = "test"
        fill_in "search", with: content
        click_button "Search"

        page.should have_selector('ul#tweets', content: content)
        page.should have_selector('div.pagination', content: 'active')
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