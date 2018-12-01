class ChangePriceToBeDecimalInMenus < ActiveRecord::Migration[5.2]
  def change
    change_column :meals, :price, :decimal
  end
end
