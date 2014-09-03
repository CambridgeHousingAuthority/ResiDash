class PersonRole < ActiveRecord::Base
    self.table_name = 'PersonRole'
    self.primary_key = :PersonRoleID

    belongs_to :person, :class_name => 'Person', :foreign_key => :fkPerson    
end
