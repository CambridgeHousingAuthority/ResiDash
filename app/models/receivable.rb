class Receivable < ActiveRecord::Base
    self.table_name = 'Receivable'
    self.primary_key = :ReceivableID

    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonCustomer    
    has_many :receivableactivities, :class_name => 'ReceivableActivity'    
    has_many :receivableactivityrefunds, :class_name => 'ReceivableActivityRefund'    
end
