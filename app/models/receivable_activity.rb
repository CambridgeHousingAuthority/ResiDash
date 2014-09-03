class ReceivableActivity < ActiveRecord::Base
    self.table_name = 'ReceivableActivity'
    self.primary_key = :ReceivableActivityID

    has_many :commitmentlineitems, :class_name => 'CommitmentLineItem'    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonCustomer    
    belongs_to :receivable, :class_name => 'Receivable', :foreign_key => :fkReceivable    
    belongs_to :receipt, :class_name => 'Receipt', :foreign_key => :fkReceipt    
    has_many :receivableactivityrefunds, :class_name => 'ReceivableActivityRefund'    
end
