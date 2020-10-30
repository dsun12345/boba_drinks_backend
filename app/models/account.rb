class Account < ApplicationRecord
    has_many :bobas
    validates :name, :balance, presence: true
end
