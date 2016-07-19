class Inventory < ActiveRecord::Base
  belongs_to :category
  belongs_to :work
  validates :wheel, numericality: { greater_than: 0 }
  after_destroy :write_register

  scope :size_x, -> (x) { where("wheel > ?", x)}

  def write_register
    Register.create(description: "La pieza con serial #{self.serial} ha sido borrada")
  end

end
