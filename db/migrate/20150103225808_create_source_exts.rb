class CreateSourceExts < ActiveRecord::Migration
  def change
    create_table :source_exts do |t|
      t.string :source_ext
      t.integer :source_ext_id_pk

      t.timestamps null: false
    end
  end
end
