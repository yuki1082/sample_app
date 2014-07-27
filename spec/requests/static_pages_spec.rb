require 'spec_helper'

describe "StaticPages" do
  subject {page}
  describe "Home Pages" do
    before{visit root_path}
    it {should have_selector('h1', text: 'Sample App')}
    it {should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Home")}
  end


  describe "Help Pages" do
    before {visit help_path}
  	it {should have_content('Help')}
  end 

  describe "About Pages" do
    before {visit about_path}
  	it {should have_content('About us')}
  end 

  describe "Contact page" do
    before {visit contact_path}
    it {should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")}
  end 

end

