class CreateClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :age
      t.string :gender
    end
  end
end