class CreateCompetences < ActiveRecord::Migration[5.1]
  def change
    create_table :competences do |t|
      t.string :name
      t.integer :defender_id
      t.timestamps
    end
  end
end
