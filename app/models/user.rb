class User < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :insurance_co, presence: true
  validates :insurance_number, presence: true


end
