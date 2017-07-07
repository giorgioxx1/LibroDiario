class CreateFileDps < ActiveRecord::Migration[5.1]
  def change
    create_table :file_dps do |t|
      t.string :subject
      t.references :file_tribunal, foreign_key: true
      t.timestamps
    end
  end
end
