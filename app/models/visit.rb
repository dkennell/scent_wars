# == Schema Information
#
# Table name: visits
#
#  created_at   :datetime         not null
#  dog_id       :bigint(8)
#  hydrant_id   :bigint(8)
#  id           :bigint(8)        not null, primary key
#  stamina_used :integer
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_visits_on_dog_id      (dog_id)
#  index_visits_on_hydrant_id  (hydrant_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_id => dogs.id)
#  fk_rails_...  (hydrant_id => hydrants.id)
#

class Visit < ApplicationRecord
  belongs_to :dog
  belongs_to :hydrant
end
