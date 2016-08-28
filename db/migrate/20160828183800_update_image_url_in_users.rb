class UpdateImageUrlInUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :image_url, :string, :default => '/assets/profile-pic.png'
  end
end
