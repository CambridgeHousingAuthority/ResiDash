class SubLedger < ActiveRecord::Base
    self.table_name = 'SubLedger'
    self.primary_key = :SubLedgerID

    belongs_to :chartofaccount, :class_name => 'ChartOfAccount', :foreign_key => :fkChartOfAccounts    
    belongs_to :accountingperiod, :class_name => 'AccountingPeriod', :foreign_key => :fkAccountingPeriod    
    belongs_to :fund, :class_name => 'Fund', :foreign_key => :fkFund    
end
