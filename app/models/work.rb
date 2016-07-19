class Work < ActiveRecord::Base
  belongs_to :user
  has_one :inventory, dependent: :destroy

  scope :last_5, -> { order(:id => :desc).limit(5) }
  scope :inventory_null, -> { where(inventory_id: nil)}
end
