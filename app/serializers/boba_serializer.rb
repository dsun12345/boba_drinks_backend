class BobaSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :name, :amount, :description
  belongs_to :account
end
