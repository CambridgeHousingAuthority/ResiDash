class PaymentLineItem < ActiveRecord::Base
    self.table_name = 'PaymentLineItem'
    self.primary_key = :PaymentLineItemID

    belongs_to :payment, :class_name => 'Payment', :foreign_key => :fkPayment    
    belongs_to :commitment, :class_name => 'Commitment', :foreign_key => :fkCommitment    
end
