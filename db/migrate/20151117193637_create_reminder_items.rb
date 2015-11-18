class CreateReminderItems < ActiveRecord::Migration
  def change
    create_table :reminder_items do |t|
      t.string :content
      t.references :reminder, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
