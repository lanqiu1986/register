class ChangeResumes < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :post_id, :integer
    add_column :resumes, :datebirth, :date
    add_column :resumes, :educationfirst, :string
    add_column :resumes, :educationlast, :string
    add_column :resumes, :degreefirst, :string
    add_column :resumes, :degreelast, :string
    add_column :resumes, :majorfirst, :string
    rename_column :resumes, :major, :majorlast
    add_column :resumes, :schoolfirst, :string
    rename_column :resumes, :school, :schoollast
  end
end
