class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :cave, foreign_key: true
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
