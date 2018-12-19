class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  belongs_to :owner
  has_many :items
end
