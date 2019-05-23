class AddPhotoToCaves < ActiveRecord::Migration[5.2]
  def change
    add_column :caves, :photo, :string
  end
end
