class AddDateToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :date, :varchar
  end
end
