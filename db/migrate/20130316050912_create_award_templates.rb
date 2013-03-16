class CreateAwardTemplates < ActiveRecord::Migration
  def change
    create_table :award_templates do |t|
      t.integer :award_id
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
