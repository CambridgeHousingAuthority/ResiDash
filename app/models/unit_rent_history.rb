class UnitRentHistory < ActiveRecord::Base
    self.table_name = 'UnitRentHistory'
    self.primary_key = :UnitRentHistoryID

    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
