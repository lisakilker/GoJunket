class Search < ActiveRecord::Base

	attr_accessible :location, :state, :gender, :orientation, :education, :relationship, :kids, :drinks, :smokes, :interests

	def users
    	@users ||= find_users
  	end

  	def self.search(params)
  	end

	private

	def find_users
	  users = User.order("RANDOM()")
	  users = users.where(location: params[:location]) if params[:location].present?
	  users = users.where(state: params[:state]) if params[:state].present?
	  users = users.where(gender: params[:gender]) if params[:gender].present?
	  users = users.where(orientation: params[:orientation]) if params[:orientation].present?
	  users = users.where(education: params[:education]) if params[:education].present?
	  users = users.where(relationship: params[:relationship]) if params[:relationship].present?
	  users = users.where(kids: params[:kids]) if params[:kids].present?
	  users = users.where(drinks: params[:drinks]) if params[:drinks].present?
	  users = users.where(smokes: params[:smokes]) if params[:smokes].present?
	  users = users.where(interests: params[:interests]) if params[:interests].present?

	  if params[:min_age].present? && params[:max_age].present?
	    min = [ min_age, max_age ].min
	    max = [ min_age, max_age ].max
	    min_date = Date.today - min.years
	    max_date = Date.today - max.years
	    users = users.where("birthday BETWEEN ? AND ?", max_date, min_date)
	  end
	  users
	end
end
