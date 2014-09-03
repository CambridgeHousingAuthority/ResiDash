class HapUapRegister < ActiveRecord::Base
    self.table_name = 'HapUapRegister'
    self.primary_key = :HapUapRegisterID

    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonPayee    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
end
