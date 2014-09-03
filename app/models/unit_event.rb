class UnitEvent < ActiveRecord::Base
    self.table_name = 'UnitEvent'
    self.primary_key = :UnitEventID

    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonOwner    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
