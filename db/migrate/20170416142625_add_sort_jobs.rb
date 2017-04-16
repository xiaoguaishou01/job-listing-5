class AddSortJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :sort, :string
    add_column :jobs, :CompanyName, :string
    add_column :jobs, :CompanyLocation, :string
  end
end
