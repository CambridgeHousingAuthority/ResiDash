class CertificationUtility < ActiveRecord::Base
    self.table_name = 'CertificationUtility'
    self.primary_key = :CertificationUtilityID

    belongs_to :paymentgroup, :class_name => 'PaymentGroup', :foreign_key => :fkPaymentGroup    
    belongs_to :certification, :class_name => 'Certification', :foreign_key => :fkCertification    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonOtherPayee    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonUAPPayee    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
