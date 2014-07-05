# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  username              :string(255)
#  email                 :string(255)
#  first_name            :string(255)
#  last_name             :string(255)
#  picture               :string(255)
#  bio                   :string(255)
#  github                :string(255)
#  linkedin              :string(255)
#  website               :string(255)
#  is_developer          :boolean
#  is_designer           :boolean
#  is_entrepreneur       :boolean
#  created_at            :datetime
#  updated_at            :datetime
#  password_digest       :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#

require 'spec_helper'

describe User do
  before do
    @user = User.new(email: "user@example.com")
  end

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:bio) }
  it { should respond_to(:github) }
  it { should respond_to(:linkedin) }
  it { should respond_to(:website) }
  it { should respond_to(:is_developer) }
  it { should respond_to(:is_entrepreneur) }

  it { should be_valid }

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end
end
