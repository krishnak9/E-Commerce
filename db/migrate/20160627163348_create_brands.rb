class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
