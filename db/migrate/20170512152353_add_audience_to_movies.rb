class AddAudienceToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :audience, :integer, default: 0
  end
end
