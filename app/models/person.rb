class Person < ActiveRecord::Base
    self.table_name = 'Person'
    self.primary_key = :PersonID

    has_many :agencylinks, :class_name => 'AgencyLink'    
    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement'    
    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement'    
    has_many :unitevents, :class_name => 'UnitEvent'    
    has_many :participantevents, :class_name => 'ParticipantEvent'    
    has_many :participantevents, :class_name => 'ParticipantEvent'    
    has_many :hapuapregisters, :class_name => 'HapUapRegister'    
    has_many :inspections, :class_name => 'Inspection'    
    has_many :certifications, :class_name => 'Certification'    
    has_many :certifications, :class_name => 'Certification'    
    has_many :certificationutilities, :class_name => 'CertificationUtility'    
    has_many :certificationutilities, :class_name => 'CertificationUtility'    
    has_many :familyissues, :class_name => 'FamilyIssue'    
    has_many :inspections, :class_name => 'Inspection'    
    has_many :personroles, :class_name => 'PersonRole'    
    has_many :receivables, :class_name => 'Receivable'    
    has_many :receivableactivities, :class_name => 'ReceivableActivity'    
end
