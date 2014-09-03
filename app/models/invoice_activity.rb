class InvoiceActivity < ActiveRecord::Base
    self.table_name = 'InvoiceActivity'
    self.primary_key = :InvoiceActivityID

    belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :fkInvoice    
    belongs_to :invoicelineitem, :class_name => 'InvoiceLineItem', :foreign_key => :fkInvoiceLineItem    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerCreated    
end
