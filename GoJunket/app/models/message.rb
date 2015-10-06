class Message < ActiveRecord::Base

	validates :content, presence: true, length: { maximum: 500 }
	validates :sender_id, presence: true
	validates :recipient_id, presence: true

	belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
	belongs_to :sender, class_name: "User", foreign_key: "sender_id"
	scope :unread, -> { where read: false }

	enum activities: [:"Beach", :"Bike Ride", :"Coffee", :"Club", :"Couple's Date", :"Dinner", :"Drinks", :"Gym", :"Kid's Play Date", :"Lunch", :"Travel", :"Other"]

	enum times: [:"Now", :"1:00 am", :"2:00 am", :"3:00 am", :"4:00 am" , :"5:00 am", :"6:00 am", :"7:00 am", :"8:00 am", :"9:00 am", :"10:00 am", :"11:00 am", :"Noon", :"1:00 pm", :"2:00 pm", :"3:00 pm", :"4:00 pm", :"5:00 pm", :"6:00 pm", :"7:00 pm", :"8:00 pm" , :"9:00 pm", :"10:00 pm", :"11:00 pm", :"Midnight"]
end
