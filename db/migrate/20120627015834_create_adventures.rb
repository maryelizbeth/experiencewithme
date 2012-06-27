class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :link
      t.string :city

      t.timestamps
    end
  end
end
