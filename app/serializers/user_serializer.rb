class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :middle_initial, :last_name, :created_at
end
