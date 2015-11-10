require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
	def setup
		@entry_one = posts(:entry_one)
		visit posts_path
	end

	test 'index should display posts' do
		
		assert page.has_content?(@entry_one.title)
		assert page.has_link?(@entry_one.title)
		assert page.has_content?(@entry_one.blog_entry)
		assert page.has_link?('Create New Post')
		click_link('Create New Post')
		click_link('Back')
	end
end
