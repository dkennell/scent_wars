class CreateOwnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :ownerships do |t|
      t.references :hydrant, foreign_key: true
      t.references :dog, foreign_key: true
      t.references :visit, foreign_key: true

      t.timestamps
    end
  end
end
