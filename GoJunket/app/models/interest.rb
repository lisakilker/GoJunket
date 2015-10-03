class Interest < ActiveRecord::Base

	has_and_belongs_to_many :users

	def self.list
		[:Animals, :Art, :Astrology, :Astronomy, :Baseball, :Basketball, :Board_Games, :Board_Sports, :Boxing, :Casual_Sex, :Cats, :Computer_Programming, :Cooking, :Cosplay, :Cycling, :Dance, :Drama, :Drawing_and_Painting, :Drinking, :Dogs, :Eating, :Fashion, :Fishing, :Food, :Football, :Gambling, :Gaming, :Hooping, :Hunting, :Internet, :Jogging, :Legos, :Magic, :Martial_Arts, :Movies, :Music, :Napping, :Paintball, :Photography, :Pilates, :Puzzles, :Reading, :Religion, :Rock_Climbing, :Sailing, :Sarcasm, :Shooting, :Skateboarding, :Skiing, :Snowboarding, :Soccer, :Sports_General, :Surfing, :Swimming, :Technology, :Travel, :Video_Games, :Writing, :Work, :Yoga]
	end
end
