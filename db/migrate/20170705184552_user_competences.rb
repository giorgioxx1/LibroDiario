class UserCompetences < ActiveRecord::Migration[5.1]
  def change
     create_table :user_competences, :id => false do |t|
        t.integer :user_id
        t.integer :competence_id
    end
  end
end
