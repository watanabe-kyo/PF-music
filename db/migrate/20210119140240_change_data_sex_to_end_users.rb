class ChangeDataSexToEndUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :end_users, :sex, :integer
  end
end
