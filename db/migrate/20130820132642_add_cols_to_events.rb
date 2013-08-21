class AddColsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :startDate, :date
    add_column :events, :endDate, :date
    add_column :events, :headline, :string
    add_column :events, :text, :text
    add_column :events, :tag, :string
    add_column :events, :classname, :string
    add_column :events, :media, :string
    add_column :events, :thumbnail, :string
    add_column :events, :credit, :string
    add_column :events, :caption, :string
  end
end
