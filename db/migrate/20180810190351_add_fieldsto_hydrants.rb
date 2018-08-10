class AddFieldstoHydrants < ActiveRecord::Migration[5.1]
  def change
    add_reference :hydrants, :dog, foreign_key: true
    add_column :hydrants, :owned_amount, :integer
  end
end
