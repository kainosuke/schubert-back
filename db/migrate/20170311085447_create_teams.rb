class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :mail
      t.string :url
      t.text :description
      t.boolean :is_published, default: false
      t.timestamps
    end
  end
end