class ChangeOverviewsToMovies < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :overviews, :overview
  end
end
