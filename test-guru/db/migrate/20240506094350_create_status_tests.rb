class CreateStatusTests < ActiveRecord::Migration[7.1]
  def change
    create_table :status_tests do |t|
      t.string :status, null: false
      t.references :test, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
