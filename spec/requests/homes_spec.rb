require 'spec_helper'

describe "Homes" do
  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'Tweeter Search') }
    it { should have_selector('title',    text: 'Tweeter Search') }

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