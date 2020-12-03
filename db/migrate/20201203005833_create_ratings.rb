class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :student_id
      t.integer :class_id
    end
  end
end
