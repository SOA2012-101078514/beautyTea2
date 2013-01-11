class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :mode
      t.boolean :pass_course

      t.timestamps
    end
  end
end
