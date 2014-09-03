class ChartOfAccount < ActiveRecord::Base
    self.table_name = 'ChartOfAccounts'
    self.primary_key = :ChartOfAccountsID

    has_many :generalledgers, :class_name => 'GeneralLedger'    
    has_many :subledgers, :class_name => 'SubLedger'    
end
