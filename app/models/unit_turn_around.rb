class UnitTurnAround < ActiveRecord::Base
    self.table_name = 'UnitTurnAround'
    self.primary_key = :UnitTurnAroundID

    belongs_to :project, :class_name => 'Project', :foreign_key => :fkProject    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
