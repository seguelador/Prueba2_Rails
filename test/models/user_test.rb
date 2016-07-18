require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:one)
  end
  
  test "User cant be valid without name" do
  	@user.name = nil
  	assert_not @user.valid?
  end
end
