class Family < ActiveRecord::Base
    self.table_name = 'Family'
    self.primary_key = :FamilyID

    has_many :utilityreimbursements, :class_name => 'UtilityReimbursement', :foreign_key => :fkFamily 
    has_many :unitevents, :class_name => 'UnitEvent', :foreign_key => :fkFamily
    has_many :participantevents, :class_name => 'ParticipantEvent', :foreign_key => :fkFamily   
    has_many :hapuapregisters, :class_name => 'HapUapRegister', :foreign_key => :fkFamily
    has_many :certifications, :class_name => 'Certification', :foreign_key => :fkFamily
    has_many :certificationutilities, :class_name => 'CertificationUtility', :foreign_key => :fkFamily 
    has_many :currentunitfamilies, :class_name => 'CurrentUnitFamily', :foreign_key => :fkFamily  
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorker    
    belongs_to :incomecategory, :class_name => 'IncomeCategory', :foreign_key => :fkIncomeCategory    
    has_many :familyissues, :class_name => 'FamilyIssue', :foreign_key => :fkFamily
    has_many :familymembers, :class_name => 'FamilyMember', :foreign_key => :fkFamily
    has_many :historicalunitfamilies, :class_name => 'HistoricalUnitFamily'    
    has_many :inspections, :class_name => 'Inspection', :foreign_key => :fkFamily  
    has_many :workorders, :class_name => 'WorkOrder', :foreign_key => :fkFamily

    def self.program_types
        Family.uniq.pluck(:program)
    end

    def self.voucher_holders
        Family.where(program: "Section 8" || "Section 8 State")
    end

    def self.public_housing
        Family.where(program: "Low Income Public Housing" || "Low Income State")
    end

    def self.waiting_list
        Family.where(program: "Waiting List")
    end
end
