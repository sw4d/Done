class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :last_login
      t.integer :team_id

      t.timestamps
    end
  end
end
