class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.integer :age
      t.string :school
      t.string :gender
      t.string :major

      t.timestamps
    end
  end
end
