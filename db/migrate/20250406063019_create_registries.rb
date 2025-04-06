class CreateRegistries < ActiveRecord::Migration[8.0]
  def change
    create_table :registries do |t|
      t.string :title
      t.text :description
      t.string :unique_link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
