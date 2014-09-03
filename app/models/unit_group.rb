class UnitGroup < ActiveRecord::Base
    self.table_name = 'UnitGroup'
    self.primary_key = :UnitGroupID

    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
