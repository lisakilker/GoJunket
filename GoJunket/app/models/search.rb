class Search < ActiveRecord::Base

	def users(params)
    	@users ||= find_users(params)
  	end

	def find_users(params)		
		interests = params[:interests] 
		interests_where_string = "(#{interests.join(', ')})"
		users = User.joins(:interests).where("interests.name IN (?)", interests)
		users = users.uniq
		users = users.where("location LIKE ?", "%#{params[:location]}%") if params[:location].present?
		users = users.where("state LIKE ?", "%#{params[:state]}%") if params[:state].present?
		users = users.where(gender: params[:gender]) if params[:gender].present?
		users = users.where(orientation: params[:orientation]) if params[:orientation].present?
		users = users.where(education: params[:education]) if params[:education].present?
		users = users.where(relationship: params[:relationship]) if params[:relationship].present?
		users = users.where(kids: params[:kids][0] == "true") if params[:kids].present?
		users = users.where(drinks: params[:drinks][0] == "true") if params[:drinks].present?
		users = users.where(smokes: params[:smokes][0] == "true") if params[:smokes].present?
		
		
		if params[:min_age].present? && params[:max_age].present?
		    min = [ params[:min_age], params[:max_age] ].min.to_i
		    max = [ params[:min_age], params[:max_age] ].max.to_i
		    min_date = Date.today - min.years
		    max_date = Date.today - max.years
		    users = users.where("date_of_birth BETWEEN ? AND ?", max_date, min_date)
	  	end
	  	users
	end
end