class RemoveUserIdFromBook < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :user_id
  end
end
