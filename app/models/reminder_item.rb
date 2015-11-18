class ReminderItem < ActiveRecord::Base
  belongs_to :reminder
  #if completed the completed at field should not be blank
  def completed?
  	!completed_at.blank?
 end
end

