# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  website     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Project < ActiveRecord::Base
end
