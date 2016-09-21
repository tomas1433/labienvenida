class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :seller
      t.string :user
      t.boolean :statut

      t.timestamps
    end
  end
end
