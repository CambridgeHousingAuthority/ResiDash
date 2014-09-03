class Fund < ActiveRecord::Base
    self.table_name = 'Fund'
    self.primary_key = :FundID

    has_many :subledgers, :class_name => 'SubLedger'    
    has_many :generalledgers, :class_name => 'GeneralLedger'    
end
