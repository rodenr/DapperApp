require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Dapper App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Dapper App')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Dapper App | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Dapper App | Help")
    end

  end

  describe "Contact" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Dapper App | Contact")
    end
  end
end
