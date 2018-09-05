class Product < ActiveRecord::Base
   
    default_scope :order => 'title'

    
    validates :title, :description, :img_url, :presence => true
    validates :price, :numericality => {:grater_than_or_equal => 0.01}
    validates :title, :uniqueness => true
    validates :img_url, :format => {
            :with => %r{\.(gif|jpg|png)\z}i,
            :message => 'must be a URL for GIF,JPG OR PNG image.'
    }
end
