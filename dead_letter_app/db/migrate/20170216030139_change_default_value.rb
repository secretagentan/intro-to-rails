class ChangeDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column :letters, :is_read, :boolean, default: false
  end
end
