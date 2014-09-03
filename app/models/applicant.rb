class Applicant < ActiveRecord::Base
    self.table_name = 'Applicant'
    self.primary_key = :ApplicantID

    has_many :waitinglistapplicantstatuses, :class_name => 'WaitingListApplicantStatus'    
    has_many :inspections, :class_name => 'Inspection'    
    belongs_to :incomecategory, :class_name => 'IncomeCategory', :foreign_key => :fkIncomeCategory    
    has_many :applicantwaitinglists, :class_name => 'ApplicantWaitingList'    
end
