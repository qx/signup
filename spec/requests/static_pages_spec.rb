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

  describe 'Home page' do

    it "should have the h1 'Sample App'" do
      visit static_pages_home_url
      page.should have_selector('h1', text: 'Sample App')
    end

    it 'should have the base title' do
      visit static_pages_home_url
      page.should have_title('Ruby on Rails Tutorial Sample App')
    end

    it 'should not have a custom page title' do
      visit static_pages_home_url
      page.should_not have_title( '| Home')
    end
  end

  describe 'Help page' do

    it "should have the h1 'Help'" do
      visit static_pages_help_path
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      visit static_pages_help_path
      page.should have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe 'About page' do

    it "should have the h1 'About'" do
      visit static_pages_about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      visit static_pages_about_path
      page.should have_title('Ruby on Rails Tutorial Sample App | About Us')
    end
  end

  describe 'Contact page' do

    it "should have the h1 'Contact'" do
      visit static_pages_contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit static_pages_contact_path
      page.should have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end
end
