class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.datetime :start_time
      t.string :building
    end
  end
end
