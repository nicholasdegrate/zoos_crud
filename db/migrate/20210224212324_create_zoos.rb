class CreateZoos < ActiveRecord::Migration[6.1]
  def change
    create_table :zoos do |t|
      t.string :name
      t.string :address
      t.string :species

      t.timestamps
    end
  end
end
