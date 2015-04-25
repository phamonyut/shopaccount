class AddCountDefaultProduct < ActiveRecord::Migration
  # def change
  #   change_column_default :products, :count, 0
  # end

  def up
    change_column_default :products, :count, 0
  end
  def down
    change_column_default :products, :count, nil
  end
end
