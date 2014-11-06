class CreateQyAccounts < ActiveRecord::Migration
  def change
    create_table :qy_accounts do |t|
      t.string :name

      t.timestamps
    end
  end
end
