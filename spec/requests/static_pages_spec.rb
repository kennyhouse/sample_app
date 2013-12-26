require 'spec_helper'

describe "Static Pages" do
  #describe "GET /static_pages" do
  #----------------------------------------changes 1-----------------------------------------
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }


  # subject { page }
  # describe "Home page" do
  # #----------------------------------------changes 1-----------------------------------------
  #   # before { visit root_path } #add this code

  #   # #-----------------codling after page is defined as subject---------------------------------
  #   # it { should have_selector('h1', text: 'Sample App') }
  #   # it { should have_selector( 'title', text: full_title('') )}
  #   # it { should_not have_selector 'title', text: '| Home' }
  # end
  #-------------------------------------------end--------------------------------------------
    #it "works! (now write some real specs)" do
    
   #  it "should have the h1 'Sample App'" do
   #  	visit root_path#'/static_pages/home' - original code
   #  	page.should have_selector('h1', :text =>'Sample App')
   #    #it { should have_selector('h1', text: 'Sample App')}
   #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #    #get static_pages_index_path
   #    #response.status.should be(200)
   #  end

   #  #it "should have the title 'Home'" do  -- original code
   #  it "should have the base title" do  # modified
  	# 	visit root_path #'/static_pages/home'
  	# 	#page.should have_selector('title', :text => "#{base_title} | Home") -- original code
   #    page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App") #modified
  	# end

   #  # add more codes
   #  it "should not have a custom page title" do
   #    visit root_path #'/static_pages/home'
   #    page.should_not have_selector('title', text: '| Home')
   #  end
    
  

  #--------------exercise 5.6 q1----------------------------
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1',     text: heading) }
    it { should have_selector('title', text: full_title(page_title))}

  end



  #--------------------end----------------------------------

  describe "Home page" do
    before {visit root_path}
    let(:heading) { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it  { should_not have_selector 'title', text: '| Home' }
  end
  

  describe "Help page" do

  	# it "should have the h1 'Help'" do
  	# 	visit help_path#'/static_pages/help'
  	# 	page.should have_selector('h1', text: 'Help')
  	# end

  	# it "should have the title 'Help'" do
	  # 	visit help_path#'/static_pages/help'
	  # 	page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Help")
  	# end

    #-----------------codling after page is defined as subject---------------------------------
    # before {visit help_path}
    # it {should have_selector('h1', text: 'Help')}
    # it {should have_selector( 'title', text: full_title('Help'))}
    #--------------------------------end-------------------------------------------------------

    #--------------------------------coding based on all static pages--------------------------
    before {visit help_path}
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
    #---------------------------------------------end------------------------------------------
  end

  describe "About page" do
  	# it "should have the h1 'About Us'" do
  	# 	visit about_path#'/static_pages/about'
  	# 	page.should have_selector('h1', text: 'About Us')
  	# end

  	# it "should have the title 'About Us'" do
	  # 	visit about_path#'/static_pages/about'
	  # 	page.should have_selector('title', text:  "Ruby on Rails Tutorial Sample App | About Us")
	  # end
    #-----------------codling after page is defined as subject---------------------------------
    # before {visit about_path}
    # it {should have_selector('h1', text: 'About')}
    # it {should have_selector( 'title', text: full_title('About Us'))}
    #--------------------------------end-------------------------------------------------------

    #-----------------codling after page is defined as subject---------------------------------
    before {visit about_path}
    let(:heading) { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
    #---------------------------------------------end------------------------------------------
  end

  describe "Contact page" do
    # it "should have the h1 'Contact'" do
    #   visit contact_path#'/static_pages/contact'
    #   page.should have_selector('h1', text: 'Contact')
    # end

    # it "should have the title 'Contact'" do
    #   visit contact_path#'/static_pages/contact'
    #   page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
    # end 
    #-----------------codling after page is defined as subject---------------------------------
    # before {visit contact_path}
    # it {should have_selector('h1', text: 'Contact')}
    # it {should have_selector( 'title', text: full_title('Contact'))}
    #--------------------------------end------------------------------------------------------- 


    #-----------------codling after page is defined as subject---------------------------------
    before {visit contact_path}
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
    
    it_should_behave_like "all static pages"
    #---------------------------------------------end------------------------------------------      
  end

  #---------------------------------------------exercise 5.36----------------------------------
  it "should have the right links on the layout"  do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!" #if want to open the sign up page, the home page should be linked first
    page.should have_selector 'title', text: full_title('Sign up')
    #click_link "My website"
    click_link "Home"
    click_link "My website"
    page.should have_selector 'title', text: full_title('My Website')
  end


end
