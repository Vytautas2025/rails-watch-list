class ChangeColumnsInMovies < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :float
    change_column :movies, :rating, :float, using: 'rating::double precision'
  end
end
