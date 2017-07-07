class UserFileDps < ActiveRecord::Migration[5.1]
  def change
    create_table :user_file_dps, :id => false do |t|
      t.integer :file_dp_id
      t.integer :user_id
    end
  end
end
