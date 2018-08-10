class CreateHydrants < ActiveRecord::Migration[5.1]
  def change
    create_table :hydrants do |t|
      t.string :size

      t.timestamps
    end
  end
end
