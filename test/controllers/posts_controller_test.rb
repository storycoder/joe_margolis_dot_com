require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
  	@post = posts(:entry_one)
  end  

  test "should get index" do
  	get :index
  	assert_response :success
  	assert_not_nil assigns(:posts)
  end

  test "should show post" do 
  	get :show, id: @post.id
  	assert_response :success
  	assert_not_nil assigns(:post)
  end

  test "should get new" do 
  	get :new
  	assert_response :success
  	assert_not_nil assigns(:post)
  end

  test "should create post" do 
  	assert_difference('Post.count', +1) do
  		post :create, post: {title: 'My Post', author:'j@example.com', blog_entry: 'Ipsum'}
  	end

  	assert_redirected_to post_path(assigns(:post))
  end

  test "should edit post" do 
  	get :edit, id: @post.id
  	assert_response :success
  	assert_not_nil assigns(:post)
  end

  test 'should update post' do
  	assert_no_difference('Post.count') do 
  		patch :update, id: @post.id, post: {title: 'My Post', author:'j@example.com', blog_entry: 'Updated Ipsum'}
  	end

  	assert_redirected_to post_path(assigns(:post))
  end

  test 'should destroy post' do 
  	assert_difference('Post.count', -1) do 
  		delete :destroy, id: @post.id 
  	end

  	assert_redirected_to posts_path
  end

end
