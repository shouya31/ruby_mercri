class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string       :name,          null: false,index: true
      t.string       :price,         null: false
      t.text       :image_url,       null: false
      t.timestamps
    end
  end
end
