class Boba < ApplicationRecord
    belongs_to :account
    validates :name, :amount, :description, presence: true
end
