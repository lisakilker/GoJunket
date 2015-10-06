class Interest < ActiveRecord::Base

	has_and_belongs_to_many :users

	def self.list
		[:"Animals", :"Art", :"Astrology", :"Astronomy", :"Baseball", :"Basketball", :"Board Games", :"Board Sports", :"Boxing", :"Casual_Sex", :"Cats", :"Computer Programming", :"Cooking", :"Cosplay", :"Cycling", :"Dance", :"Drama", :"Drawing and Painting", :"Drinking", :"Dogs", :"Eating", :"Fashion", :"Fishing", :"Food", :"Football", :"Gambling", :"Gaming", :"Hooping", :"Hunting", :"Internet", :"Jogging", :"Kids Activities", :"Legos", :"Magic", :"Martial Arts", :"Movies", :"Music", :"Napping", :"Paintball", :"Photography", :"Pilates", :"Puzzles", :"Reading", :"Religion", :"Rock Climbing", :"Sailing", :"Sarcasm", :"Shooting", :"Skateboarding", :"Skiing", :"Snowboarding", :"Soccer", :"Sports", :"Surfing", :"Swimming", :"Technology", :"Traveling", :"Video Games", :"Writing", :"Work", :"Yoga"]
	end
end
