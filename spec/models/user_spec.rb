# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  before { @user = User.new(name: '12345', email: "my@email.com", password: '123456')
  }
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  # 应该通过验证
  it { should be_valid }
  it { should respond_to(:authenticate) }
  describe "with a password that's  too  short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "return value of authenticate method " do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe " with valid password  1 " do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password   2 " do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      # specify { expect(user_for_invalid_password).to be_false }
    end
  end

end
