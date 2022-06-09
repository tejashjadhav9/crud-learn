class CreateCrudds < ActiveRecord::Migration[7.0]
  def change
    create_table :crudds do |t|
      t.string :name
      t.text :body
      t.bigint :number

      t.timestamps
    end
  end
end
