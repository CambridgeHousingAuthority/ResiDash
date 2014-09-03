class InspectionActivity < ActiveRecord::Base
    self.table_name = 'InspectionActivity'
    self.primary_key = :InspectionActivityID

    has_many :inspections, :class_name => 'Inspection'    
    has_many :inspections, :class_name => 'Inspection'    
    has_many :inspectiondeficiencies, :class_name => 'InspectionDeficiency'    
    belongs_to :inspection, :class_name => 'Inspection', :foreign_key => :fkInspection    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerScheduledBy    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerInspectedBy    
end
