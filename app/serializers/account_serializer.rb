class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance
  has_many :bobas
end
