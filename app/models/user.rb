class User < ApplicationRecord

  has_many :doctors

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :email, presence: true
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ 

  validates :phone, presence: true
  # validates_format_of :phone, with:  /\A\d{3}-\d{3}-\d{4}\z/, message: "only numbers with spaces or hyphens"

  validates :insurance_co, presence: true

  validates :insurance_number, presence: true
  validates :insurance_number, uniqueness: true


end
