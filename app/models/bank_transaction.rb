class BankTransaction < ActiveRecord::Base
    self.table_name = 'BankTransaction'
    self.primary_key = :BankTransactionID

end
