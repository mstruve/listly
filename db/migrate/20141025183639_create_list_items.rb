class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :list, index: true
      t.string :item_name
      t.string :description
      t.string :size
      t.integer :number_wanted
      t.string :store_name
      t.string :url

      t.timestamps
    end
  end
end
