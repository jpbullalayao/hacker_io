# == Schema Information
#
# Table name: startups
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  website     :string(255)
#  size        :string(255)
#  picture     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Startup < ActiveRecord::Base
end
