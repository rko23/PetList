class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.string :age
      t.string :breed
      t.string :photo
      t.integer :owner_id

      t.timestamps
    end
  end
end
