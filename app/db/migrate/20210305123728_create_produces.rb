class CreateProduces < ActiveRecord::Migration[6.1]
  def change
    create_table :produces do |t|
      t.string :name
      t.text :description
      t.string :headline
      t.float :points
      t.float :price
      t.boolean :available
      t.string :image_url
      t.string :thumb
      t.string :slug

      t.timestamps
    end
  end
end
