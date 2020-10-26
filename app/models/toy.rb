class Toy < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_attached_file :image
    
    belongs_to :user
    has_many :sales
end
