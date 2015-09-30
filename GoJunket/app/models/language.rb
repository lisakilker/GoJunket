class Language < ActiveRecord::Base
	has_and_belongs_to_many :users

	def self.list
		[:Chinese, :English, :French, :German, :Italian, :Russian, :Spanish]
	end
end
