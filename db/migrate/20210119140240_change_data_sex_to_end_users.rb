class ChangeDataSexToEndUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :end_users, :sex, :integer
  end
end
