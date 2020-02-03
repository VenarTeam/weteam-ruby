class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.numeric :number, null: false
      t.boolean :fit, default: true

      t.timestamps
    end
  end
end
