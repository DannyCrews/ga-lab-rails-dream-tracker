class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.datetime :date
      t.text :description
      t.text :feelings
    end
  end
end
