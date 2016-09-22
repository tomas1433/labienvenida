class AddFieldsToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :buyer_id, :integer
    add_column :requests, :seller_id, :integer
  end
end
