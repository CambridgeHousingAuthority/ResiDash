class FamilyMemberAsset < ActiveRecord::Base
    self.table_name = 'FamilyMemberAsset'
    self.primary_key = :FamilyMemberAssetID

    belongs_to :familymember, :class_name => 'FamilyMember', :foreign_key => :fkFamilyMember    
end
