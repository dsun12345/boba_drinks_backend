class Boba < ApplicationRecord
    belongs_to :account
    validates :amount, presence: true
end
