class User < ActiveRecord::Base
  attr_accessible :age, :email, :image_url, :name, :sex

  has_many :winks

  def wink_at(other_user)
    Wink.create(user_id: self.id, winked_at_id: other_user.id)
  end

  def has_winked_at(other_user)
    Wink.exists?(user_id: self.id, winked_at_id: other_user.id)
  end



end
