class CreateWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :uri, null: false
      t.string :title
      t.string :icon

      t.timestamps
    end
  end
end
