class CreateQyApps < ActiveRecord::Migration
  def change
    create_table :qy_apps do |t|
      t.string :name

      t.timestamps
    end
  end
end
