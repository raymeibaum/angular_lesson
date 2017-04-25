class Doctor < ApplicationRecord
  has_many :appointments, dependant: :destroy
  validates :name, presence: true, uniqueness: true
end
