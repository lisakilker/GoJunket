class User < ActiveRecord::Base

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_attached_file :avatar, :styles => { :medium => "250x250>", :thumb => "150x150#" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :name, presence: true
	validates :date_of_birth, presence: true
	validates :gender, presence: true
	
	enum gender: {:"Guy" => 0, :"Girl" => 1}
	
	enum orientation: {:"Straight" => 0, :"Gay" => 1, :"Bi" => 3}
	
	enum relationship: {:"Single" => 0, :"Taken" => 1, :"Married" => 3}
	
	enum education: {:"High School" => 0, :"Course Certification" => 1, :"College" => 2, :"Grad School" => 3, :"PhD" => 4}

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

	has_many :messages, class_name: "Message", foreign_key: "recipient_id"
	has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
end



