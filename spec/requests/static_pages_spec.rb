require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get static_pages_index_path
  #    response.status.should be(200)
  #  end
  #end
  subject { page }

  describe "Home page" do
    before(:each) { visit root_path }

    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_selector('title', :text => "#{base_title} | Home") }
  end

  describe "Help page" do
    before(:each) { visit help_path }

    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => "#{base_title} | Help") }
  end

  describe "About page" do
    before(:each) { visit about_path }

    it { should have_selector('h1', :text => 'About Us') }
    it { should have_selector('title', :text => "#{base_title} | About Us") }
  end

  describe "Contact page" do
    it "should have a Contact page" do
      get contact_path
      response.status.should be(200)
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                                :text => "#{base_title} | Contact")
    end
  end

end
