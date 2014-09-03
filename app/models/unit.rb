class Unit < ActiveRecord::Base
    self.table_name = 'Unit'
    self.primary_key = :UnitID

    has_many :agencylinks, :class_name => 'AgencyLink', :foreign_key => :fkUnit 
    has_many :unitgroups, :class_name => 'UnitGroup', :foreign_key => :fkUnit  
    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement', :foreign_key => :fkUnit 
    has_many :unitevents, :class_name => 'UnitEvent', :foreign_key => :fkUnit 
    has_many :participantevents, :class_name => 'ParticipantEvent', :foreign_key => :fkUnit 
    has_many :waitinglistapplicantstatuses, :class_name => 'WaitingListApplicantStatus', :foreign_key => :fkUnit 
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerInspector    
    has_many :certifications, :class_name => 'Certification', :foreign_key => :fkUnit  
    has_many :certificationutilities, :class_name => 'CertificationUtility', :foreign_key => :fkUnit 
    has_many :currentunitfamilies, :class_name => 'CurrentUnitFamily', :foreign_key => :fkUnit  
    has_many :familyissues, :class_name => 'FamilyIssue', :foreign_key => :fkUnit 
    has_many :historicalunitfamilies, :class_name => 'HistoricalUnitFamily', :foreign_key => :fkUnit  
    has_many :inspections, :class_name => 'Inspection', :foreign_key => :fkUnit 
    has_many :inspectionactivities, :class_name => 'InspectionActivity', :foreign_key => :fkUnit 
    belongs_to :building, :class_name => 'Building', :foreign_key => :fkBuilding    
    belongs_to :project, :class_name => 'Project', :foreign_key => :fkProject    
    has_many :unitrenthistories, :class_name => 'UnitRentHistory', :foreign_key => :fkUnit  
    has_many :unitturnarounds, :class_name => 'UnitTurnAround', :foreign_key => :fkUnit  
    has_many :utilityallowances, :class_name => 'UtilityAllowance', :foreign_key => :fkUnit  
    has_many :workorders, :class_name => 'WorkOrder', :foreign_key => :fkUnit 
end
