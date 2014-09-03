class InspectionDeficiency < ActiveRecord::Base
    self.table_name = 'InspectionDeficiency'
    self.primary_key = :InspectionDeficiencyID

    belongs_to :inspectionactivity, :class_name => 'InspectionActivity', :foreign_key => :fkInspectionActivity    
    belongs_to :inspection, :class_name => 'Inspection', :foreign_key => :fkInspection    
end
