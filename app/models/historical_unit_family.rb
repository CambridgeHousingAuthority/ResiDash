class HistoricalUnitFamily < ActiveRecord::Base
    self.table_name = 'HistoricalUnitFamily'
    self.primary_key = :UnitFamilyID

    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerMoveIn    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerMoveOut    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
