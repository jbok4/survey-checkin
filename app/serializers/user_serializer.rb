class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :reason, :insurance_co
end
