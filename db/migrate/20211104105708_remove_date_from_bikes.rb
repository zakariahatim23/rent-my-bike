class RemoveDateFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :listed_at, :datetime
  end
end
