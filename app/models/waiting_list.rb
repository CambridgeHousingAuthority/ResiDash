class WaitingList < ActiveRecord::Base
    self.table_name = 'WaitingList'
    self.primary_key = :WaitingListID

    has_many :agencylinks, :class_name => 'AgencyLink'    
    has_many :waitinglistapplicantstatuses, :class_name => 'WaitingListApplicantStatus'    
    has_many :applicantwaitinglists, :class_name => 'ApplicantWaitingList'    
end
