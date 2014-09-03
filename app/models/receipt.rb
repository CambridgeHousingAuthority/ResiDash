class Receipt < ActiveRecord::Base
    self.table_name = 'Receipt'
    self.primary_key = :ReceiptID

    has_many :receivableactivities, :class_name => 'ReceivableActivity'    
end
