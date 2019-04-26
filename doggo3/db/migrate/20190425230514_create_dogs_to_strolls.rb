class CreateDogsToStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs_to_strolls do |t|
      t.belongs_to :stroll, index: true
      t.belongs_to :dog, index: true

      t.timestamps
    end
  end
end
