class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :person
      t.text :content
      t.text :ip
      t.timestamps null: false
    end
  end
end
