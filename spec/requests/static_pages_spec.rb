require 'spec_helper'

describe 'Static pages' do

  describe 'Home page' do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Aplicación de Ejemplo')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title('Aplicación de Ejemplo del Tutorial de Ruby on Rails | Inicio')
    end
  end

  describe 'Help page' do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Ayuda')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title('Aplicación de Ejemplo del Tutorial de Ruby on Rails | Ayuda')
    end
  end

  describe 'About page' do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('¿Quiénes Somos?')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title('Aplicación de Ejemplo del Tutorial de Ruby on Rails | ¿Quiénes Somos?')
    end
  end
end