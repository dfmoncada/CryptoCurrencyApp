class AddRefernceToInfoAtTime < ActiveRecord::Migration[5.1]
  def change
    add_reference :info_at_times, :crypto, foreign_key: true
  end
end
