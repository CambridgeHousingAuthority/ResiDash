class WaitingListApplicantStatus < ActiveRecord::Base
    self.table_name = 'WaitingListApplicantStatus'
    self.primary_key = :WaitingListApplicantStatusID

    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
    belongs_to :applicant, :class_name => 'Applicant', :foreign_key => :fkApplicant    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
    belongs_to :waitinglist, :class_name => 'WaitingList', :foreign_key => :fkWaitingList    
    belongs_to :applicantwaitinglist, :class_name => 'ApplicantWaitingList', :foreign_key => :fkApplicantWaitingList    
end
