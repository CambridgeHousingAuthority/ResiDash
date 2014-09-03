class ReceivableActivityRefund < ActiveRecord::Base
    self.table_name = 'ReceivableActivityRefund'
    self.primary_key = :ReceivableActivityRefundID

    belongs_to :receivable, :class_name => 'Receivable', :foreign_key => :fkReceivable    
    belongs_to :receivableactivity, :class_name => 'ReceivableActivity', :foreign_key => :fkReceivableActivity    
    belongs_to :commitmentlineitem, :class_name => 'CommitmentLineItem', :foreign_key => :fkCommitmentLineItemRefund    
end
