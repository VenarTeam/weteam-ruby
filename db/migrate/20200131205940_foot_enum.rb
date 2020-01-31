class FootEnum < ActiveRecord::Migration[6.0]
  def change
    execute <<-SQL
      CREATE TYPE foot AS ENUM ('left', 'right');
    SQL

    add_column :players, :foot, :foot
  end
end
