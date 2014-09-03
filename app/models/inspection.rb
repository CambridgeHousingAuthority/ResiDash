class Inspection < ActiveRecord::Base
    self.table_name = 'Inspection'
    self.primary_key = :InspectionID

    belongs_to :applicant, :class_name => 'Applicant', :foreign_key => :fkApplicant    
    belongs_to :inspectionactivity, :class_name => 'InspectionActivity', :foreign_key => :fkInspectionActivityFinal    
    belongs_to :inspectionactivity, :class_name => 'InspectionActivity', :foreign_key => :fkInspectionActivityFirst    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonHAPPayee    
    has_many :inspectiondeficiencies, :class_name => 'InspectionDeficiency'    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonOwner    
    has_many :inspectionactivities, :class_name => 'InspectionActivity'    
end
