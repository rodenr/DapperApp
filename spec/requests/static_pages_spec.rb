require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Dapper App') }
    it { should have_title("FaceBack app attack") }
    it { should_not have_title('| Home') }
  end
end
