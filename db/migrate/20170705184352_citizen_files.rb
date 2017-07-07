class CitizenFiles < ActiveRecord::Migration[5.1]
  def change
      create_table :citizen_files, :id => false do |t|
        t.integer :citizen_id
        t.integer :file_id
      end
  end
end
