class AccountingPeriod < ActiveRecord::Base
    self.table_name = 'AccountingPeriod'
    self.primary_key = :AccountingPeriodID

    has_many :subledgers, :class_name => 'SubLedger'    
    has_many :generalledgers, :class_name => 'GeneralLedger'    
end
