class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
<<<<<<< HEAD
  	add_index :users, :email, unique: true
=======
  #	add_index :users, :email, unique: true
>>>>>>> cf71c2fe04edad7cfc82b696d2fec528443e7e14

  end
end
