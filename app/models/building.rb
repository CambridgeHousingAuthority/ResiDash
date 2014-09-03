class Building < ActiveRecord::Base
    self.table_name = 'Building'
    self.primary_key = :BuildingID

    belongs_to :property, :class_name => 'Property', :foreign_key => :fkProperty    
    has_many :units, :class_name => 'Unit'    
end
