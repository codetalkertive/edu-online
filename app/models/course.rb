class Course < ApplicationRecord
	has_rich_text :description

	validates :title, :short_description,  presence: true
	validates :description, presence: true, length: {:minimum => 5}
	validates :price, presence: true
	belongs_to :user
	
	extend FriendlyId
    friendly_id :title, use: :slugged
end
