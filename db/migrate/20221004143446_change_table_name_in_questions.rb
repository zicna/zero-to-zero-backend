class ChangeTableNameInQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :name
    add_column :questions, :title, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
