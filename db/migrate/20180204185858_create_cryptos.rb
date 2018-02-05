class CreateCryptos < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.string :short_name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
