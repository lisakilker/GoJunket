class User < ActiveRecord::Base

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_attached_file :avatar, :styles => { :medium => "250x250>", :thumb => "150x150#" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :name, presence: true
	validates :date_of_birth, presence: true
	validates :gender, presence: true
	
	enum gender: [:Male, :Female, :male, :female]
	
	enum orientation: [:Straight, :Gay, :Bi, :Whatever, :straight, :gay, :bi, :whatever]
	
	enum relationship: [:Single, :Taken, :Married, :single, :taken, :married]
	
	enum education: [:High_School, :Course_Certification, :College, :Grad_School, :PhD, :high_school, :course_certification, :college, :grad_school, :phd]

	 has_and_belongs_to_many :interests
 accepts_nested_attributes_for :interests, :allow_destroy => true, :reject_if => :all_blank
 
 has_and_belongs_to_many :languages
 accepts_nested_attributes_for :languages, :allow_destroy => true, :reject_if => :all_blank

	def age
		age = Date.today.year - date_of_birth.year
		if Date.today.month < date_of_birth.month
		    if Date.today.day < date_of_birth.day
				age = age - 1
			end
		end
		age
	end

	def self.search(search)
	  where("name LIKE ?", "%#{search}%")
	end
end

