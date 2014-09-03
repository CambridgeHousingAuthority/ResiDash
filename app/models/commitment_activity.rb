class CommitmentActivity < ActiveRecord::Base
    self.table_name = 'CommitmentActivity'
    self.primary_key = :CommitmentActivityID

    belongs_to :commitment, :class_name => 'Commitment', :foreign_key => :fkCommitment    
    belongs_to :commitmentlineitem, :class_name => 'CommitmentLineItem', :foreign_key => :fkCommitmentLineItem    
    belongs_to :assignedworker, :class_name => 'AssignedWorker', :foreign_key => :fkAssignedWorkerCreated    
end
