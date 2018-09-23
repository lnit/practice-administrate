class CreateBodyTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :body_templates do |t|
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
