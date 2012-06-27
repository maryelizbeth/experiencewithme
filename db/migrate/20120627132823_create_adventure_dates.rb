class CreateAdventureDates < ActiveRecord::Migration
  def change
    create_table :adventure_dates do |t|
      t.integer :adventure_id
      t.string :date

      t.timestamps
    end
  end
end
