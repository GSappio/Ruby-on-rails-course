class CreateMinigTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :minig_types do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
