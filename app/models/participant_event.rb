class ParticipantEvent < ActiveRecord::Base
    self.table_name = 'ParticipantEvent'
    self.primary_key = :ParticipantEventID

    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonOwner    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonHAPPayee    
    belongs_to :familyissue, :class_name => 'FamilyIssue', :foreign_key => :fkFamilyIssue    
    belongs_to :issuefunding, :class_name => 'IssueFunding', :foreign_key => :fkIssueFunding    
    belongs_to :incomecategory, :class_name => 'IncomeCategory', :foreign_key => :fkIncomeCategory    
end
