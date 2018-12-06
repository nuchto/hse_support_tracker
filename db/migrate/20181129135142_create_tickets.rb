class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :assigner_id
      t.integer :assignee_id
      t.integer :reporter_id

      t.timestamps
    end
  end
end
