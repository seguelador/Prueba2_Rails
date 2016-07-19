class User < ActiveRecord::Base
  has_many :works, dependent: :destroy
  has_one :inventory
  validates :name, presence: true
end
