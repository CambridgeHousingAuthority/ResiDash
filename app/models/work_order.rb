class WorkOrder < ActiveRecord::Base
    self.table_name = 'WorkOrder'
    self.primary_key = :WorkOrderID

    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
