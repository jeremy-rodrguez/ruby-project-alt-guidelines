class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :student_id
      t.integer :klass_id
    end
  end
end
