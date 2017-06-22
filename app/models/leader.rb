class Leader < ApplicationRecord
  has_many :employees
  validates :name, presence: true, uniqueness: true
end
