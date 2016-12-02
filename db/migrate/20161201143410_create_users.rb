class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirm

      t.timestamps
    end
      # add_index :users, [:id, :created_at]
  end
end
