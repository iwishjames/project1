class AddRoleTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role_type, :string
  end
end
