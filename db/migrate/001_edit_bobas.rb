class EditBobas < ActiveRecord::Migration[6.0]
    def change
      change_table :bobas do |t|
        t.remove :amount, :description
        t.float :quantity
    end
  end
end
  