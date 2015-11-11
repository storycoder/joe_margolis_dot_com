class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :author, presence: true
	validates :blog_entry, presence: true
end
