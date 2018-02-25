class AddGenreToShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    add_column :shows, :day, :string
    add_column :shows, :season, :string 
  end
end

# class AddShowsToNetwork < ActiveRecord::Migration
#   #to make an additive change to a schema we create
#   #a new migration, and then in the change method,
#   #we make the change.
#   def change
#     add_column :shows, :network_id, :integer
#   end
# end