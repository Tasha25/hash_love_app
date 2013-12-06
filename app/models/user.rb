class User < ActiveRecord::Base
  attr_accessible :age, :email, :image_url, :name, :sex
end
