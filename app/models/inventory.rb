class Inventory < ActiveRecord::Base
  belongs_to :category
  belongs_to :work
  validates :wheel, numericality: { greater_than: 0 }

  scope :size_x, -> (x) { where("wheel > ?", x)}
end
