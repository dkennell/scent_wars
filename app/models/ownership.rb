# == Schema Information
#
# Table name: ownerships
#
#  created_at :datetime         not null
#  dog_id     :bigint(8)
#  hydrant_id :bigint(8)
#  id         :bigint(8)        not null, primary key
#  updated_at :datetime         not null
#  visit_id   :bigint(8)
#
# Indexes
#
#  index_ownerships_on_dog_id      (dog_id)
#  index_ownerships_on_hydrant_id  (hydrant_id)
#  index_ownerships_on_visit_id    (visit_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_id => dogs.id)
#  fk_rails_...  (hydrant_id => hydrants.id)
#  fk_rails_...  (visit_id => visits.id)
#

class Ownership < ApplicationRecord
  belongs_to :hydrant
  belongs_to :dog
  belongs_to :visit
end
