class FamilyMemberIncome < ActiveRecord::Base
    self.table_name = 'FamilyMemberIncome'
    self.primary_key = :FamilyMemberIncomeID

    belongs_to :familymember, :class_name => 'FamilyMember', :foreign_key => :fkFamilyMember    
end
