require 'spec_helper'

describe "StaticPages" do

  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get static_pages_index_path
  #    response.status.should be(200)
  #  end
  #end

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    before(:each) { visit root_path }

    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
  end

  describe "Help page" do
    before(:each) { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before(:each) { visit about_path }

    let(:heading)    { 'About' }
    let(:page_title) { 'About' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    it "should have a Contact page" do
      get contact_path
      response.status.should be(200)
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                                :text => full_title('Contact'))
    end
  end

end
