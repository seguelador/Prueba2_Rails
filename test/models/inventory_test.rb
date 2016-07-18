require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @inventory = inventories(:two)
  end

  test "Serial number cant be repeated" do
  	@inventory.serial = 1
  	assert @inventory.valid?
  end
end
