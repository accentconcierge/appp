class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :service
      t.string :charge
      t.string :feedback
      t.string :tip

      t.timestamps null: false
    end
  end
end
