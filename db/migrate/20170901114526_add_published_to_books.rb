class AddPublishedToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :published, :boolean
  end
end
