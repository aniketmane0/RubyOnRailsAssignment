class Employee < ApplicationRecord
  has_and_belongs_to_many :skills
  belongs_to :leader

  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }

  validates :age , presence: true, numericality: { only_integer: true }
end
