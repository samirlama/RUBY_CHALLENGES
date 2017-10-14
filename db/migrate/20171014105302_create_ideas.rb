class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|

      t.timestamps null: false
      t.text :description
      t.string :author
    end
  end
end
