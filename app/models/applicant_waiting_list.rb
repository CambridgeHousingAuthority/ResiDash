class ApplicantWaitingList < ActiveRecord::Base
    self.table_name = 'ApplicantWaitingList'
    self.primary_key = :ApplicantWaitingListID

    has_many :waitinglistapplicantstatuses, :class_name => 'WaitingListApplicantStatus'    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
    belongs_to :waitinglist, :class_name => 'WaitingList', :foreign_key => :fkWaitingList    
    belongs_to :applicant, :class_name => 'Applicant', :foreign_key => :fkApplicant    
end
