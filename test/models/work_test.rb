require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @work = works(:one)
  end


  test "When select a work it must return his user" do
    user = Work.first.user
    assert user.valid?
  end
end
