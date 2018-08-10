# == Schema Information
#
# Table name: dogs
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  level      :integer
#  name       :string
#  points     :integer
#  stamina    :integer
#  updated_at :datetime         not null
#

class Dog < ApplicationRecord
end
