class UtilityAllowance < ActiveRecord::Base
    self.table_name = 'UtilityAllowance'
    self.primary_key = :UtilityAllowanceID

    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
