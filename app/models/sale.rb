class Sale < ApplicationRecord
    before_create :populate_uuid
    
    belongs_to :toy

    validates_numericality of :price
    greater_than: 1, message: "Price must be atleast 1€"

    private
    def populate_uuid
        self.uuid = SecureRandom.uuid()
    end

end
