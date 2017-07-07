class CreateSettles < ActiveRecord::Migration[5.1]
  def change
    create_table :settles do |t|
      t.references :file_dp, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date
      t.string :content
      t.timestamps
    end
  end
end
