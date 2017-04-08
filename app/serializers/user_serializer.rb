class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bithday, :email, :phone, :reason, :insurance_co
end
