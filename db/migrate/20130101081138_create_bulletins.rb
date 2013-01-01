class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.date :date
      t.text :msg
      t.string :organizer
      
      t.timestamps
    end
  end
end
