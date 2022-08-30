class RemoveRoleFromVolunteers < ActiveRecord::Migration[7.0]
  def change
    remove_column :volunteers, :role, :string
  end
end
