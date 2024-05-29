class AddAcquiredToProperties < ActiveRecord::Migration[7.1]
  def change
    add_column :properties, :acquired, :boolean
  end
end
