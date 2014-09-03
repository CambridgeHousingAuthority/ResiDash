class AgencyLink < ActiveRecord::Base
    self.table_name = 'AgencyLink'
    self.primary_key = :AgencyLinkID

    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
    belongs_to :waitinglist, :class_name => 'WaitingList', :foreign_key => :fkWaitingList    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
    belongs_to :issuefunding, :class_name => 'IssueFunding', :foreign_key => :fkIssueFunding    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonAgency    
end
