class CreateGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.string :name
      t.string :fonetical

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
