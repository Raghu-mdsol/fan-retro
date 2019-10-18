class CreateRetrospectives < ActiveRecord::Migration[6.0]
  def change
    create_table :retrospectives do |t|
      t.string :postive
      t.string :negative
      t.string :improvements
      t.integer :board_id
      t.timestamps
    end
  end
end
