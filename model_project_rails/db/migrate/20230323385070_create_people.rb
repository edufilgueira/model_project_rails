class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people, if_not_exists: true do |t|
      t.string :name, null: false
      t.string :cpf, :unique =>  true, null: false
      t.string :rg, :unique =>  true, null: true
      t.string :fonetical
      t.string :social_name, null: true
      t.date :birth_date, null: true
      t.references :gender, null: false, foreign_key: true
      t.references :breed, null: false, foreign_key: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
