# == Schema Information
#
# Table name: events
#
#  created_at :datetime         not null
#  hydrant_id :bigint(8)
#  id         :bigint(8)        not null, primary key
#  type       :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_events_on_hydrant_id  (hydrant_id)
#
# Foreign Keys
#
#  fk_rails_...  (hydrant_id => hydrants.id)
#

class Event < ApplicationRecord
  belongs_to :hydrant
end
