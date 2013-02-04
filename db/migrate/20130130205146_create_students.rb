class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :question1
      t.string :question2
      t.integer :question3
      t.string :question4

      t.timestamps
    end
  end

  def self.down
  	drop_table :students
  end
end
