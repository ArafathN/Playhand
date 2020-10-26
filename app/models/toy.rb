class Toy < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_attached_file :image
    
    belongs_to :user
    has_many :sales

    validates_numericality_of :price,
    greater_than: 1,message: "Price must be atleast 1€"
    
end
