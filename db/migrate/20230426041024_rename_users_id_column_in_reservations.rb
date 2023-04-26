class RenameUsersIdColumnInReservations < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :users_id, :user_id
  end
end
