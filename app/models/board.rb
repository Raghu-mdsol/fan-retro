class Board < ApplicationRecord
	SIZE = 10
	belongs_to :user 
	has_many :retrospectives

	 #validates :name, format: { without: /\s/, message: "must contain no spaces" }
	 #validates :name, :uniqueness => true
	 #validates :name, length: {minimum: 1}, message: "Should not be blank"
	 #validates :description, presence:  { message: 'must not be blank' }
	 validates :description, presence: true
	 validates :description, presence:  true
	 
     #validates :name, presence: { message: "must be given please"}

     
 end
