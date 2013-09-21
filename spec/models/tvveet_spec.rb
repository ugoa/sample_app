require 'spec_helper'

describe Tvveet do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @tvveet = Tvveet.new(content: "Lorem ipsum", user_id: user.id)
  end
  subject { @tvveet }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @tvveet.user_id = nil }

    it { should_not be_valid }
  end
end