class AddPhonenumberToResume < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :phonenumber, :integer
  end
end
