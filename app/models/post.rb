class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :blog_entry, presence: true

	belongs_to :user
end
