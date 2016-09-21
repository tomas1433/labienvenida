class AddRatingToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :rating, :integer
  end
end
