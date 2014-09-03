class FamilyIssue < ActiveRecord::Base
    self.table_name = 'FamilyIssue'
    self.primary_key = :FamilyIssueID

    has_many :participantevents, :class_name => 'ParticipantEvent'    
    has_many :certifications, :class_name => 'Certification'    
    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPersonAgency    
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :fkUnit    
end
