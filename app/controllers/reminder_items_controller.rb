class ReminderItemsController < ApplicationController
	before_action :set_reminder
	before_action :set_reminder_item, except: [:create]
	def create 
		@reminder_item = @reminder.reminder_items.create(reminder_item_params)
		redirect_to @reminder
	end
	
	def destroy
		if @reminder_item.destroy
			flash[:success] = "Your reminder note has been removed"
    	redirect_to @reminder
   	end
   end

   def complete 
   	@reminder_item.update_attribute(:completed_at, Time.now)
   	redirect_to @reminder, notice: "Reminder Item Completed"
   end


	private
	def set_reminder
	   @reminder = Reminder.find(params[:reminder_id])
    end

    def set_reminder_item
    	@reminder_item = @reminder.reminder_items.find(params[:id])
    end

    def reminder_item_params
    	params[:reminder_item].permit(:content)
    end

end
