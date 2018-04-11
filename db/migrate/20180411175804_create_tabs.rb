class CreateTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :tabs do |t|
      t.string :url, null: false
      t.string :favicon_url
      t.references :user, null: false
      t.string :title

      t.timestamps
    end
  end
end
