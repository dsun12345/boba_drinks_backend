class CreateBobas < ActiveRecord::Migration[6.0]
  def change
    create_table :bobas do |t|
      t.integer :account_id
      t.string :name
      t.float :amount
      t.string :description

      t.timestamps
    end
  end
end
