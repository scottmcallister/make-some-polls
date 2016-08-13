class User < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :vote_options, through: :votes
  class << self
    def from_omniauth(auth)
      uid = auth.uid
      info = auth.info.symbolize_keys!
      user = User.find_or_initialize_by(uid: uid)
      user.name = info.name
      user.image_url = info.image
      user.save!
      user
    end
  end
  def voted_for?(poll)
    vote_options.any? {|v| v.poll == poll }
  end
end
