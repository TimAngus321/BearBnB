class AddDescriptionToCaves < ActiveRecord::Migration[5.2]
  def change
    add_column :caves, :description, :text
  end
end
