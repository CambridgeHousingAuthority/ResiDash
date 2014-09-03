class Invoice < ActiveRecord::Base
    self.table_name = 'Invoice'
    self.primary_key = :InvoiceID

    belongs_to :payee, :class_name => 'Payee', :foreign_key => :fkPayee    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroup    
    has_many :invoiceactivities, :class_name => 'InvoiceActivity'    
    has_many :invoicelineitems, :class_name => 'InvoiceLineItem'    
end
