class Reminder < ActiveRecord::Base
	has_many :reminder_items
	belongs_to :user
end
