class CreateBookmkfolders < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmkfolders do |t|
      t.string :bookmkfoldertitle
      t.string :bookmkfoldercolor
      t.integer :bookmk_id
      t.references :email, foreign_key: true
      t.references :user, foreign_key: true, index: true


      t.timestamps
    end
  end
end
