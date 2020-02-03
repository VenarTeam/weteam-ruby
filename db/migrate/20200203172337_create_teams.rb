class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :claimed, default: false

      t.timestamps
    end
  end
end
