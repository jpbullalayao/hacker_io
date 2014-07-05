# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password        :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  picture         :string(255)
#  bio             :string(255)
#  github          :string(255)
#  linkedin        :string(255)
#  website         :string(255)
#  is_developer    :boolean
#  is_designer     :boolean
#  is_entrepreneur :boolean
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
	validates :email, presence: true
end
