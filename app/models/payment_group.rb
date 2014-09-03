class PaymentGroup < ActiveRecord::Base
    self.table_name = 'PaymentGroup'
    self.primary_key = :PaymentGroupID

    has_many :certificationutilities, :class_name => 'CertificationUtility'    
    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement'    
    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement'    
    has_many :commitments, :class_name => 'Commitment'    
    has_many :commitmentlineitems, :class_name => 'CommitmentLineItem'    
    has_many :invoices, :class_name => 'Invoice'    
    has_many :invoicelineitems, :class_name => 'InvoiceLineItem'    
    has_many :payments, :class_name => 'Payment'    
end
