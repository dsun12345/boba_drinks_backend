class Account < ApplicationRecord
    has_many :bobas
    validates :name, :balance, presence: true

    def update_balance(boba)
        self.balance = self.balance - boba.quantity*5
        if  self.balance >= 0
            self.save
        else 
            return "Balance too low!"
        end 
    end 

    def update_balance_on_delete(boba)
        self.balance = self.balance + boba.quantity*5
        self.save
    end 

end
