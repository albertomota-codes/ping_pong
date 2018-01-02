class AddOwnerToMatch < ActiveRecord::Migration
  def change
    add_reference :matches, :owner, index: true, foreign_key: false
  end
end
