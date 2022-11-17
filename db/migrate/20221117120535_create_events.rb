class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.text :name
      t.text :location
      t.timestamp :date

      t.timestamps
    end
  end
end
