class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.string :msg
      t.date :date
      t.date :deadline

      t.timestamps
    end
  end
end
