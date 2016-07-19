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

  test "Scope inventory_null must have only works without inventories" do
      values = Work.inventory_null.collect(&:inventory_id)
      response = values.all? {|x| x.nil?}
      assert_equal true, response
  end
end
