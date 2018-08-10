# == Schema Information
#
# Table name: hydrants
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  size       :string
#  updated_at :datetime         not null
#

class Hydrant < ApplicationRecord
end
