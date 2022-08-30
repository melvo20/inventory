class AddRoleToVolunteers < ActiveRecord::Migration[7.0]
  def change
    add_column :volunteers, :role, :string
  end
end
