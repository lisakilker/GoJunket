class User < ActiveRecord::Base

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "150x150#" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	enum gender: [:Male, :Female, :male, :female]
	enum orientation: [:Straight, :Gay, :Bi, :Whatever, :straight, :gay, :bi, :whatever]
	enum relationship: [:Single, :Taken, :Married, :single, :taken, :married]

	enum interests: [:Animals, :Astrology, :Astronomy, :Baseball, :Basketball, :Board_Games, :Board_Sports, :Boxing, :Casual_Sex, :Cats, :Computer_Programming, :Cooking, :Cosplay, :Cycling, :Dance, :Drama, :Drawing_and_Painting, :Drinking, :Dogs, :Eating, :Fashion, :Fishing, :Food, :Football, :Gambling, :Gaming, :Hooping, :Hunting, :Internet, :Jogging, :Legos, :Magic, :Martial_Arts, :Movies, :Music, :Napping, :Paintball, :Photography, :Pilates, :Puzzles, :Reading, :Religion, :Rock_Climbing, :Sailing, :Sarcasm, :Shooting, :Skateboarding, :Skiing, :Snowboarding, :Soccer, :Sports_General, :Surfing, :Swimming, :Technology, :Travel, :Video_Games, :Writing, :Work, :Yoga, :animals, :astrology, :astronomy, :baseball, :basketball, :board_games, :board_sports, :boxing, :casual_sex, :cats, :computer_programming, :cooking, :cosplay, :cycling, :dance, :drama, :drawing_and_painting, :drinking, :dogs, :eating, :fashion, :fishing, :food, :football, :gambling, :gaming, :hooping, :hunting, :internet, :jogging, :legos, :magic, :martial_arts, :movies, :music, :napping, :paintball, :photography, :pilates, :puzzles, :reading, :religion, :rock_climbing, :sailing, :sarcasm, :shooting, :skateboarding, :skiing, :snowboarding, :soccer, :sports_general, :surfing, :swimming, :technology, :travel, :video_games, :writing, :work, :yoga]

	def age
		age = Date.today.year - date_of_birth.year
		if Date.today.month < date_of_birth.month
		    if Date.today.day < date_of_birth.day
				age = age - 1
			end
		end
		age
	end
end

