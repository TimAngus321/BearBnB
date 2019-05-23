class ConvertStringsToDates < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :start_date, "date USING start_date::date"
    change_column :reservations, :end_date, "date USING end_date::date"
  end
end
