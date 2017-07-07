class CreateTribunals < ActiveRecord::Migration[5.1]
  def change
    create_table :tribunals do |t|
      t.string :name
      t.timestamps
    end
  end
end
