class AddPerformanceCountToLine < ActiveRecord::Migration
  def change
    add_column :lines, :performances_count, :integer
  end
end
