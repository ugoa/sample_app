require 'spec_helper'

describe Tvveet do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @tvveet = Tvveet.new(content: "Lorem ipsum", user_id: user.id)
  end
  subject { @tvveet }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
end
