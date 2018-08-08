class Product < ActiveRecord::Base
   
    validates :title, :description, :img_url, :presence => true
    validates :prise, :numericality => {:grater_than_or_equal => 0.01}

end
