class CreateGuestTable < ActiveRecord::Migration[5.2]
  def change
  create_table :guests do |t|
    t.string :name
  end

  end
end
