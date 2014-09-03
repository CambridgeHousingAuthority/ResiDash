class IssueFunding < ActiveRecord::Base
    self.table_name = 'IssueFunding'
    self.primary_key = :IssueFundingID

    has_many :agencylinks, :class_name => 'AgencyLink'    
    has_many :participantevents, :class_name => 'ParticipantEvent'    
end
