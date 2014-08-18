class AddOpenToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :open, :boolean, default: true, null: false
  end
end
