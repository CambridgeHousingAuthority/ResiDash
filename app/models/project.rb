class Project < ActiveRecord::Base
    self.table_name = 'Project'
    self.primary_key = :ProjectID

    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement'    
    has_many :units, :class_name => 'Unit'    , :foreign_key => :fkProject  
    has_many :unitturnarounds, :class_name => 'UnitTurnAround'    
end
