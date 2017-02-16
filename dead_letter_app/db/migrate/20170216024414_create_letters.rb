class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.string :to_address
      t.string :from_address
      t.text :message
      t.boolean :is_read

      t.timestamps
    end
  end
end
