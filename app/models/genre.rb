class Genre < ApplicationRecord
    has_many :items
    
    enum exhaust_class: { e50u: 0, e125: 1, e250: 2, e400: 3, e750: 4, e1000: 5, e1000o: 6 }
end
