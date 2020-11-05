class Boba < ApplicationRecord
    belongs_to :account
    validates :name, :quantity, presence: true
end
