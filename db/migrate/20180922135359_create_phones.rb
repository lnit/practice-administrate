class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :body
      t.string :company_code
      t.string :certificate_code
      t.belongs_to :message, foreign_key: true

      t.timestamps
    end
  end
end
