class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.string :name
      t.string :location, null: true
      t.string :phone, null: true
      t.text :description

      t.timestamps
    end
  end
end
