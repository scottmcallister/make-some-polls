class Group < ApplicationRecord
  has_many :users, through: :memberships
end
