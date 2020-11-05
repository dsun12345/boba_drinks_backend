class BobaSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :name, :quantity 
  belongs_to :account
end
