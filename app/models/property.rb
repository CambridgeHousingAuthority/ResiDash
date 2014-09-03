class Property < ActiveRecord::Base
    self.table_name = 'Property'
    self.primary_key = :PropertyID

    has_many :buildings, :class_name => 'Building'    
end
