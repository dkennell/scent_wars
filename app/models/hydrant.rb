# == Schema Information
#
# Table name: hydrants
#
#  created_at   :datetime         not null
#  dog_id       :bigint(8)
#  id           :bigint(8)        not null, primary key
#  owned_amount :integer
#  size         :string
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_hydrants_on_dog_id  (dog_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_id => dogs.id)
#

class Hydrant < ApplicationRecord
end
