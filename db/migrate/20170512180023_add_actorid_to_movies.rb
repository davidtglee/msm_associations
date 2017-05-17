class AddActoridToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :actor_id, :integer
  end
end
