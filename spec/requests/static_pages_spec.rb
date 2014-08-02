require 'spec_helper'

describe "StaticPages" do
  subject {page}
  describe "Home Pages" do
    before{visit root_path}
    let(:page_title) {"Home"}
    it {should have_selector('h1', text: 'Sample App')}
    it {should have_selector('title', text: full_title(page_title))}
  end


  describe "Help Pages" do
    before {visit help_path}
  	it {should have_content('Help')}
  end 

  describe "About Pages" do
    let(:page_title){ "About us"}
    before {visit about_path}
  	it {should have_content(page_title)}
  end 

  describe "Contact page" do
    before {visit contact_path}
    let(:page_title){"Contact"}
    it {should have_selector('title', text: full_title(page_title))}
  end 


  it "should have the right links on the layout" do 
    visit root_path
    click_link "Help"
    page.should have_selector('title', text: full_title("Help"))

  end 

end


