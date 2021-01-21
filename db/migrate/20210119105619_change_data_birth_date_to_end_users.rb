class ChangeDataBirthDateToEndUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :end_users, :birth_date, :date
  end
end
