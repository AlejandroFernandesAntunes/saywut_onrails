class CreateSayings < ActiveRecord::Migration
  def change
    create_table :sayings do |t|
      t.string :wut
      t.string :who
      t.time :wen
      t.integer :crap_count

      t.timestamps
    end
  end
end
