class RemoveReferenceFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_reference :categories, :user, index: true
  end
end
