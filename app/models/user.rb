class User < ApplicationRecord

  has_many :doctors

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :email, presence: true
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ 

  validates :phone, presence: true
  
  validates :insurance_co, presence: true

  validates :insurance_number, presence: true
  validates :insurance_number, uniqueness: true


end
