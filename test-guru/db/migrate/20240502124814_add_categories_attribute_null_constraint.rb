class AddCategoriesAttributeNullConstraint < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:categories, :title, false)
  end
end
