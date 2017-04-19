class AddViewedCount < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :viewed_count, :integer, default: 0
  end
end
