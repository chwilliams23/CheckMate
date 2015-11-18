class AddCompletedAtToReminderItems < ActiveRecord::Migration
  def change
    add_column :reminder_items, :completed_at, :datetime
  end
end
