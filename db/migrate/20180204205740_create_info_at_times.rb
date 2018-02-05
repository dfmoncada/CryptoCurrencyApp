class CreateInfoAtTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :info_at_times do |t|
      t.datetime :time
      t.float :price
      t.float :market_cap

      t.timestamps
    end
  end
end
