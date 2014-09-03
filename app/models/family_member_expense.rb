class FamilyMemberExpense < ActiveRecord::Base
    self.table_name = 'FamilyMemberExpense'
    self.primary_key = :FamilyMemberExpenseID

    belongs_to :familymember, :class_name => 'FamilyMember', :foreign_key => :fkFamilyMember    
end
