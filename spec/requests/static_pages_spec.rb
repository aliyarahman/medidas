require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Medidas" }

  describe "Home page" do

    it "should have the content 'Medidas'" do
      visit '/static_pages/home'
      expect(page).to have_content('Medidas')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Medidas")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end



  describe "Help page" do

    it "should have the content 'Help'" do
	visit '/static_pages/help'
	  expect(page).to have_content('Help')
    end#{base_title} 

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")  
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
        visit '/static_pages/about'
          expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
        visit '/static_pages/contact'
          expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end


end