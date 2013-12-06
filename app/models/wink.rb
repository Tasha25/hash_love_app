class Wink < ActiveRecord::Base
  attr_accessible :user_id, :winked_at_id
  belongs_to :user



end
