class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :f_name
      t.string :l_name
      t.string :address
      t.string :email
      t.string :password_digest
      t.string :section

      t.timestamps null: false
    end
  end
end
