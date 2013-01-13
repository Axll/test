class CreateVoorstels < ActiveRecord::Migration
  def change
    create_table :voorstels do |t|
      t.string :name
      t.string :place
      t.string :time
      t.text :content

      t.timestamps
    end
  end
end
