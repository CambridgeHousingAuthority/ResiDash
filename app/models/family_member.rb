class FamilyMember < ActiveRecord::Base
    self.table_name = 'FamilyMember'
    self.primary_key = :FamilyMemberID

    belongs_to :family, :class_name => 'Family', :foreign_key => :fkFamily    
    has_many :familymemberassets, :class_name => 'FamilyMemberAsset'    
    has_many :familymemberexpenses, :class_name => 'FamilyMemberExpense'    
    has_many :familymemberincomes, :class_name => 'FamilyMemberIncome'    
end
