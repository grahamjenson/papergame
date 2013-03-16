class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.integer :user_id
      t.float :complete
      t.integer :retailer_id
      t.text :description
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
