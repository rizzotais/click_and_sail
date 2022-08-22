class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.integer :size
      t.string :brand
      t.integer :year
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
