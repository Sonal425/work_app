class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :description
      t.integer :addressable_id
      t.string  :addressable_type
      t.timestamps
    end
  end
end
