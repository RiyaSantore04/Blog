class Article < ApplicationRecord
	# has_many :comments
	
	validates :title, presence: true
  validates :body, presence: true
    # has_one_attached :avatar
        



end
