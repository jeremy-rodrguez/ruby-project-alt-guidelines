class CreateKlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :klasses do |t|
      t.string :name
      t.datetime :start_time
      t.string :building
      t.integer :rating
    end
  end
end
