class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.string :issue_type
      t.text :description

      t.timestamps
    end
  end
end
