class AddUserIdToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :user_id, :integer
  end
end
