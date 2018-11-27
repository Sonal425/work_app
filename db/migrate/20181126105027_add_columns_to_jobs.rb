class AddColumnsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :created_by, :integer
    add_column :jobs, :title, :string
    add_column :jobs, :requirements, :text, array: true, default: []
    add_column :jobs, :description, :string
  end
end
