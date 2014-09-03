class IncomeCategory < ActiveRecord::Base
    self.table_name = 'IncomeCategory'
    self.primary_key = :IncomeCategoryID

    has_many :participantevents, :class_name => 'ParticipantEvent'    
    has_many :applicants, :class_name => 'Applicant'    
    has_many :certifications, :class_name => 'Certification'    
    has_many :families, :class_name => 'Family'    
end
