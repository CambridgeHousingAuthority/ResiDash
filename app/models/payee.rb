class Payee < ActiveRecord::Base
    self.table_name = 'Payee'
    self.primary_key = :PayeeID

    has_many :commitments, :class_name => 'Commitment'    
    has_many :commitmentlineitems, :class_name => 'CommitmentLineItem'    
    has_many :invoices, :class_name => 'Invoice'    
    has_many :invoicelineitems, :class_name => 'InvoiceLineItem'    
    has_many :payments, :class_name => 'Payment'    
end
