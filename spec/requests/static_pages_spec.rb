require 'spec_helper'

describe 'StaticPages' do
  # describe "GET /static_pages/home" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get '/static_pages/home'
  #     response.status.should be(200)
  #   end
  # end

  # describe 'Home page' do
  #
  #   it "should have the h1 'Sample App'" do
  #     visit '/static_pages/home'
  #     page.should have_selector('h1', :text => 'Sample App')
  #   end
  #
  #   it 'should have the base title' do
  #     visit '/static_pages/home'
  #     page.should have_title('Ruby on Rails Tutorial Sample App')
  #   end
  #
  #   it 'should not have a custom page title' do
  #     visit '/static_pages/home'
  #     page.should_not have_title('| Home')
  #   end
  # end
  subject { page }
  describe 'Home page' do
    before { visit root_path }
    # it "should have the h1 'Sample App'" do
    #   page.should have_selector('h1', text: 'Sample App')
    # end

    it { should have_selector('h1', text: 'Sample App') }

    # it 'should have the base title' do
    #   page.should have_title('Ruby on Rails Tutorial Sample App')
    # end
    it { should have_title('Ruby on Rails Tutorial Sample App') }

    # it 'should not have a custom page title' do
    #   page.should_not have_title('| Home')
    # end
    it { should_not have_title('| Home') }
  end

  describe 'Help page' do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }

    it { should have_title('Ruby on Rails Tutorial Sample App | Help') }
  end

  describe 'About page' do
    before { visit about_path }
    it { should have_selector('h1', text: 'About Us') }

    it { should have_title('Ruby on Rails Tutorial Sample App | About Us') }
  end

  describe 'Contact page' do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }

    it { should have_title('Ruby on Rails Tutorial Sample App | Contact') }
  end
end
