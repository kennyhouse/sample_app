require 'spec_helper'

describe "MyWebsites" do
  subject { page }

	describe "mywebsite page" do
		before { visit mywebsite_path }

		it { should have_selector('h1', text: 'My Website')}
		it { should have_selector('title', text: full_title('My Website'))}
    
    end
end
