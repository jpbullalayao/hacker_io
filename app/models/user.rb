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

class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, 
										format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false }

  # Checks to see that password fields are present, compares password and confirmation fields,
  # and compares password to digest
  has_secure_password
	validates :password, length: { minimum: 6 }
end
