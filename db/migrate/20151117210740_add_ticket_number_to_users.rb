class AddTicketNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ticket_number, :integer
  end
end
