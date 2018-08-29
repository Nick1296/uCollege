class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
