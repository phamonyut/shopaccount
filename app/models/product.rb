class Product < ActiveRecord::Base
  self.per_page = 10
  attachment :image
end
