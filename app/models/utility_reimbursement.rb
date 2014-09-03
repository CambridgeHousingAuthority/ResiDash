class UtilityReimbursement < ActiveRecord::Base
    self.table_name = 'UtilityReimbursement'
    self.primary_key = :UtilityReimbursementID

    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :project, :class_name => 'Project', :foreign_key => :fkProject    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonPayee    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroupPayee    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonAltPayee    
    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroupAltPayee    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
