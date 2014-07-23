class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.text :content, null: false
      t.references :web_page, null: false

      t.timestamps
    end
  end
end
