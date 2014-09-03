class GeneralLedger < ActiveRecord::Base
    self.table_name = 'GeneralLedger'
    self.primary_key = :GeneralLedgerID

    belongs_to :chartofaccount, :class_name => 'ChartOfAccount', :foreign_key => :fkChartOfAccounts    
    belongs_to :accountingperiod, :class_name => 'AccountingPeriod', :foreign_key => :fkAccountingPeriod    
    belongs_to :fund, :class_name => 'Fund', :foreign_key => :fkFund    
end
