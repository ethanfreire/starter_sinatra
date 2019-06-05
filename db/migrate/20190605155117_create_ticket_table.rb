class CreateTicketTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :show_id
      t.integer :guest_id

    end
  end
end
