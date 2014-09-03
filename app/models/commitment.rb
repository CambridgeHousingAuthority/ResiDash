class Commitment < ActiveRecord::Base
    self.table_name = 'Commitment'
    self.primary_key = :CommitmentID

    belongs_to :payee, :class_name => 'Payee', :foreign_key => :fkPayee    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroup    
    has_many :commitmentactivities, :class_name => 'CommitmentActivity'    
    has_many :commitmentlineitems, :class_name => 'CommitmentLineItem'    
    has_many :paymentlineitems, :class_name => 'PaymentLineItem'    
end
