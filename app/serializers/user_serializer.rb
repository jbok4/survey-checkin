class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthday, :email, :phone, :reason, :insurance_co, :doctor_id
end
