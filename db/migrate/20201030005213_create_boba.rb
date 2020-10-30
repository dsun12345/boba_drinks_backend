class CreateBoba < ActiveRecord::Migration[6.0]
  def change
    create_table :boba do |t|
      t.integer :account_id
      t.float :amount
      t.string :description

      t.timestamps
    end
  end
end
