class Product < ActiveRecord::Base
    validates :title, :description, :img_url, :presence => true

end
