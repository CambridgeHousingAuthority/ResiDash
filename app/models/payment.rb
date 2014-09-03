class Payment < ActiveRecord::Base
    self.table_name = 'Payment'
    self.primary_key = :PaymentID

    belongs_to :payee, :class_name => 'Payee', :foreign_key => :fkPayee    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroup    
    has_many :paymentlineitems, :class_name => 'PaymentLineItem'    
end
