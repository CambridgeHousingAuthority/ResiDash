class InvoiceLineItem < ActiveRecord::Base
    self.table_name = 'InvoiceLineItem'
    self.primary_key = :InvoiceLineItemID

    has_many :commitmentlineitems, :class_name => 'CommitmentLineItem'    
    has_many :invoiceactivities, :class_name => 'InvoiceActivity'    
    belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :fkInvoice    
    belongs_to :payee, :class_name => 'Payee', :foreign_key => :fkPayee    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroup    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerCreated    
end
