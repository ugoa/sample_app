require 'spec_helper'

describe "Tvveet pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }

  before { valid_sign_in user }

  describe "tvveet creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a micropost" do
        expect { click_button "Post" }.should_not change(Tvveet, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before { fill_in 'tvveet_content', with: "Lorem ipsum" }
      it "should create a micropost" do
        expect { click_button "Post" }.should change(Tvveet, :count).by(1)
      end
    end
  end

end