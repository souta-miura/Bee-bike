class Address < ApplicationRecord
    belongs_to :user
    
    validates :postal_code, :name, :address, presence: true
    
    def address_all
      self.postal_code+' '+self.address+' '+self.name
    end
    
    def address_display
        '〒' + postal_code + ' ' + address + ' ' + name
    end
end
