class Account < ApplicationRecord
    has_many :bobas
    validates :name, :balance, presence: true

    def update_balance(transaction)
        self.balance = self.balance - boba.amount
        if  self.balance >= 0
            self.save
        else 
            return "Balance too low!"
        end 
    end 


end
