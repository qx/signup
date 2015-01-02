require 'spec_helper'

describe 'StaticPages' do
  # describe "GET /static_pages/home" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get '/static_pages/home'
  #     response.status.should be(200)
  #   end
  # end

  describe 'Home page' do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it 'should have the base title' do
      visit '/static_pages/home'
      page.should have_title('Ruby on Rails Tutorial Sample App')
    end

    it 'should not have a custom page title' do
      visit '/static_pages/home'
      page.should_not have_title('| Home')
    end
  end
  # describe 'About page' do
  #
  #   it "should have the content 'About Us'" do
  #     visit '/static_pages/about'
  #     page.should have_content('About Us')
  #   end
  # end
  # describe ' contact page test ' do
  #
  #   it ' should have the right title' do
  #     visit '/static_pages/contact'
  #     # page.should have_selector('title',:text => 'WELCOME')
  #     page.should have_content('Contact')
  #   end
  #
  # end
end
