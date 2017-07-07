class CreateFileTribunals < ActiveRecord::Migration[5.1]
  def change
    create_table :file_tribunals do |t|
      t.references :tribunal, foreign_key: true
      t.string :file_id
      t.timestamps
    end
  end
end
