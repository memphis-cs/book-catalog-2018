class AddImprintRefToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :imprint, foreign_key: true
  end
end
