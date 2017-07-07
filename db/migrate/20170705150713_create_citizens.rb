class CreateCitizens < ActiveRecord::Migration[5.1]
  def change
    create_table :citizens do |t|
      t.string :name
      t.integer :citizen_id
      t.integer :age
      t.boolean :gender
      t.string :residence
      t.boolean :detention
      t.string :place_of_detention
      t.timestamps
    end
  end
end
