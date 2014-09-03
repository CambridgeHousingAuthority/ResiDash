class CommitmentLineItem < ActiveRecord::Base
    self.table_name = 'CommitmentLineItem'
    self.primary_key = :CommitmentLineItemID

    has_many :commitmentactivities, :class_name => 'CommitmentActivity'    
    belongs_to :commitment, :class_name => 'Commitment', :foreign_key => :fkCommitment    
    belongs_to :invoicelineitem, :class_name => 'InvoiceLineItem', :foreign_key => :fkInvoiceLineItem    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerCreated    
    belongs_to :payee, :class_name => 'Payee', :foreign_key => :fkPayee    
    belongs_to :receivableactivity, :class_name => 'ReceivableActivity', :foreign_key => :fkReceivableActivityTransfer    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroup    
    has_many :receivableactivityrefunds, :class_name => 'ReceivableActivityRefund'    
end
