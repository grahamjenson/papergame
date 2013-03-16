class CreateIdentifiers < ActiveRecord::Migration
  def change
    create_table :identifiers do |t|
      t.string :identifier_id
      t.string :type_token
      t.string :issuer
      t.string :value
      t.string :display

      t.timestamps
    end
  end
end
