class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :hydrant, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
