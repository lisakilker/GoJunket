module ApplicationHelper
	def alert
		flash[:alert] if flash[:alert]
	end
	def notice
		flash[:notice] if flash[:notice]
	end
end
