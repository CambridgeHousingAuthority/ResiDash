# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "AccountingPeriod", primary_key: "AccountingPeriodID", force: true do |t|
    t.integer  "AccountingPeriod"
    t.datetime "AccountingPeriodStartDate"
    t.datetime "AccountingPeriodEndDate"
    t.integer  "FiscalQuarter"
    t.string   "FiscalYearDescription",     limit: 50
    t.integer  "FiscalYear"
    t.integer  "CalendarMonth"
    t.integer  "CalendarQuarter"
    t.integer  "CalendarYear"
    t.string   "IsCurrent",                 limit: 3
    t.string   "Aggregate",                 limit: 50
    t.string   "FiscalYearEndingMonth",     limit: 10
  end

  create_table "AgencyLink", primary_key: "AgencyLinkID", force: true do |t|
    t.integer  "fkPersonAgency"
    t.integer  "fkUnit"
    t.integer  "fkWaitingList"
    t.integer  "fkAssignedWorker"
    t.integer  "fkIssueFunding"
    t.datetime "ETLDate"
  end

  create_table "Applicant", primary_key: "ApplicantID", force: true do |t|
    t.datetime "ApplicationDate"
    t.string   "HeadOfHouseName",                  limit: 90
    t.integer  "Age"
    t.string   "Sex",                              limit: 50
    t.string   "Citizenship",                      limit: 50
    t.boolean  "IsDisabled"
    t.string   "Race",                             limit: 50
    t.string   "Ethnicity",                        limit: 50
    t.string   "LastFourDigitID",                  limit: 10
    t.string   "Phone",                            limit: 50
    t.string   "PrimaryStreet",                    limit: 50
    t.string   "SecondaryStreet",                  limit: 50
    t.string   "Suite",                            limit: 50
    t.string   "City",                             limit: 50
    t.string   "State",                            limit: 50
    t.string   "ZIP",                              limit: 50
    t.decimal  "GrossIncome",                                 precision: 19, scale: 4
    t.decimal  "NetIncome",                                   precision: 19, scale: 4
    t.integer  "FamilySize"
    t.boolean  "IsElderly"
    t.integer  "ParticipantCalculatedBedroomSize"
    t.integer  "fkIncomeCategory"
    t.datetime "ETLDate"
    t.string   "EntityID",                         limit: 20
    t.string   "Zip4",                             limit: 4
    t.string   "FileNameAs",                       limit: 90
    t.datetime "DateOfBirth"
  end

  create_table "ApplicantWaitingList", primary_key: "ApplicantWaitingListID", force: true do |t|
    t.integer  "fkApplicant"
    t.integer  "fkWaitingList"
    t.integer  "fkAssignedWorker"
    t.datetime "VoucherIssueDate"
    t.datetime "VoucherExpirationDate"
    t.integer  "PositionOnList"
    t.integer  "NumberOfBedrooms"
    t.string   "WaitingListStatus",     limit: 50
    t.datetime "DateOfStatus"
    t.string   "TypeOfStatus",          limit: 20
    t.integer  "PositionAtDraw"
    t.datetime "DrawDate"
    t.string   "WaitingListProgram",    limit: 50
    t.integer  "HousingOffersRejected"
    t.boolean  "IsActiveOnList"
    t.datetime "ETLDate"
    t.datetime "ApplicationDate"
    t.string   "ProgramCode",           limit: 4
  end

  create_table "AssignedWorker", primary_key: "AssignedWorkerID", force: true do |t|
    t.string   "WorkerTaxID",     limit: 15
    t.string   "Name",            limit: 90
    t.string   "Phone",           limit: 50
    t.string   "PrimaryStreet",   limit: 50
    t.string   "SecondaryStreet", limit: 50
    t.string   "Suite",           limit: 10
    t.string   "City",            limit: 25
    t.string   "State",           limit: 4
    t.string   "Zip",             limit: 10
    t.boolean  "IsActive"
    t.datetime "ETLDate"
    t.string   "Zip4",            limit: 4
  end

  create_table "BankTransaction", primary_key: "BankTransactionID", force: true do |t|
    t.string   "BankName",            limit: 50,                          null: false
    t.string   "BankAccountNumber",   limit: 20
    t.decimal  "Amount",                         precision: 19, scale: 4, null: false
    t.integer  "CheckNumber"
    t.integer  "DirectDepositNumber"
    t.string   "Type",                limit: 30,                          null: false
    t.datetime "ItemDate"
    t.datetime "ClearDate"
    t.datetime "ReconciledDate"
    t.datetime "PostedDate"
    t.string   "Program",             limit: 50
    t.string   "Memo"
    t.datetime "ETLDate"
    t.string   "ProgramCode",         limit: 4
  end

  create_table "Building", primary_key: "BuildingID", force: true do |t|
    t.string   "IDOfBuilding",             limit: 20,                          null: false
    t.string   "PropertyDescription",      limit: 50
    t.integer  "YearBuilt"
    t.string   "PrimaryStreet",            limit: 50
    t.string   "SecondaryStreet",          limit: 50
    t.string   "Suite",                    limit: 50
    t.string   "City",                     limit: 50
    t.string   "State",                    limit: 50
    t.string   "ZIP",                      limit: 50
    t.string   "AttentionLine",            limit: 50
    t.string   "Zip4",                     limit: 50
    t.datetime "ScheduledDemolitionDate"
    t.datetime "DemolitionDate"
    t.integer  "ExistingUnits"
    t.integer  "ProposedUnits"
    t.integer  "RemainingEconomicLife"
    t.decimal  "TotalMonthlyRent",                    precision: 19, scale: 4
    t.decimal  "ProposedTotalMonthlyRent",            precision: 19, scale: 4
    t.decimal  "VacancyRate",                         precision: 9,  scale: 6
    t.boolean  "IsInFloodZone"
    t.integer  "NumberOfFloors"
    t.boolean  "IsValid"
    t.datetime "ModifiedDate"
    t.string   "BuildingDescription",      limit: 50
    t.integer  "TotalNumberOfUnits"
    t.integer  "TotalOccupiedUnits"
    t.integer  "TotalVacantUnits"
    t.integer  "fkProperty"
    t.datetime "ETLDate"
  end

  create_table "Certification", primary_key: "CertificationID", force: true do |t|
    t.integer  "EliteCertificationID",                                             null: false
    t.datetime "EffectiveDate"
    t.datetime "NextAnnualReExamDate"
    t.string   "ActionType",                   limit: 50
    t.string   "EffectiveType",                limit: 50
    t.datetime "ApprovedDate"
    t.datetime "CompletedDate"
    t.datetime "OpenedDate"
    t.datetime "SubmittedDate"
    t.decimal  "TotalFamilyIncome",                       precision: 19, scale: 4
    t.decimal  "AdjustedIncome",                          precision: 19, scale: 4
    t.decimal  "RentChargeAmount",                        precision: 19, scale: 4
    t.decimal  "TenantRentAmmount",                       precision: 19, scale: 4
    t.decimal  "MinimumRentAmount",                       precision: 19, scale: 4
    t.decimal  "CeilingRentAmount",                       precision: 19, scale: 4
    t.decimal  "MaximumRentAmount",                       precision: 19, scale: 4
    t.integer  "NumberOfDaysToComplete"
    t.integer  "NumberOfDaysToApprove"
    t.decimal  "FlatRentAmount",                          precision: 19, scale: 4
    t.decimal  "HAPPaymentAmount",                        precision: 19, scale: 4
    t.decimal  "UAPPaymentAmount",                        precision: 19, scale: 4
    t.decimal  "EscrowCreditamount",                      precision: 19, scale: 4
    t.decimal  "VPSOverrideAmount",                       precision: 19, scale: 4
    t.decimal  "TTPAmount",                               precision: 19, scale: 4
    t.string   "Program",                      limit: 50
    t.boolean  "FamilyIsMovingIntoUnit"
    t.boolean  "ParticipantCompletedContract"
    t.integer  "NumberInFamily"
    t.string   "IncomeLimit",                  limit: 50
    t.integer  "fkFamily"
    t.integer  "fkPersonHAPPayee"
    t.integer  "fkPersonOwner"
    t.integer  "fkAssignedWorker"
    t.integer  "fkIncomeCategory"
    t.decimal  "UtilityAllowance",                        precision: 19, scale: 4
    t.datetime "ProjectedRecertDate"
    t.datetime "ETLDate"
    t.string   "ProgramCode",                  limit: 4
    t.datetime "NextFlatRentReExamDate"
    t.integer  "fkUnit"
    t.string   "SelectedRentType",             limit: 20
    t.integer  "fkFamilyIssue"
    t.string   "CertificationVoucherType"
    t.integer  "fkAssignedWorkerCompleted"
  end

  create_table "CertificationUtility", primary_key: "CertificationUtilityID", force: true do |t|
    t.decimal  "UtilityReimbursementAmount",             precision: 19, scale: 4
    t.decimal  "OverrideReimbursementAmount",            precision: 19, scale: 4
    t.string   "isResidentResponsible",       limit: 3
    t.string   "PaymentType",                 limit: 8
    t.datetime "DateEffective"
    t.string   "Utility",                     limit: 50
    t.string   "UtilityUse",                  limit: 50
    t.string   "StructureType",               limit: 50
    t.string   "Locality",                    limit: 50
    t.string   "Program",                     limit: 50
    t.integer  "fkCertification"
    t.integer  "fkFamily"
    t.integer  "fkPersonUAPPayee"
    t.integer  "fkPersonOtherPayee"
    t.integer  "fkUnit"
    t.datetime "ETLDate"
    t.string   "AccountNumber",               limit: 50
    t.integer  "fkPaymentGroup"
    t.string   "ProgramCode",                 limit: 4
    t.datetime "ScheduleEffectiveDate"
  end

  create_table "ChartOfAccounts", primary_key: "ChartOfAccountsID", force: true do |t|
    t.string  "GLAccountNumber",               limit: 80,  null: false
    t.string  "AccountDescription",            limit: 512
    t.string  "AccountType",                   limit: 50
    t.string  "AccountSubType",                limit: 50
    t.string  "Segment1Description",           limit: 50
    t.string  "Segment1Separator",             limit: 1
    t.string  "Segment1Value",                 limit: 50
    t.string  "Segment2Description",           limit: 50
    t.string  "Segment2Separator",             limit: 1
    t.string  "Segment2Value",                 limit: 50
    t.string  "Segment3Description",           limit: 50
    t.string  "Segment3Separator",             limit: 1
    t.string  "Segment3Value",                 limit: 50
    t.string  "Segment4Description",           limit: 50
    t.string  "Segment4Separator",             limit: 1
    t.string  "Segment4Value",                 limit: 50
    t.string  "Segment5Description",           limit: 50
    t.string  "Segment5Separator",             limit: 1
    t.string  "Segment5Value",                 limit: 50
    t.string  "Segment6Description",           limit: 50
    t.string  "Segment6Separator",             limit: 1
    t.string  "Segment6Value",                 limit: 50
    t.string  "Segment7Description",           limit: 50
    t.string  "Segment7Separator",             limit: 1
    t.string  "Segment7Value",                 limit: 50
    t.string  "Segment8Description",           limit: 50
    t.string  "Segment8Separator",             limit: 1
    t.string  "Segment8Value",                 limit: 50
    t.string  "Segment9Description",           limit: 50
    t.string  "Segment9Value",                 limit: 50
    t.string  "MainAccountCodeValue",          limit: 50
    t.string  "MainAccountCodeDescription",    limit: 50
    t.string  "NaturalBalance",                limit: 1
    t.string  "ProjectAccountCodeValue",       limit: 50
    t.string  "ProjectAccountCodeDescription", limit: 50
    t.string  "FDSLineNumber",                 limit: 20
    t.string  "FDSDescription",                limit: 128
    t.string  "ReportingGroup",                limit: 50
    t.string  "AccountCodeTypeDescription",    limit: 50
    t.integer "ReportSortOrder"
    t.string  "Fund",                          limit: 10
    t.string  "FundDescription",               limit: 50
  end

  create_table "Commitment", primary_key: "CommitmentID", force: true do |t|
    t.string   "CommitmentNumber",      limit: 50
    t.string   "CommitmentDescription", limit: 50
    t.decimal  "CommitmentAmount",                 precision: 19, scale: 4
    t.datetime "CommitmentDueDate"
    t.datetime "DiscountDueDate"
    t.datetime "DateOpened"
    t.datetime "DateClosed"
    t.datetime "DateDeleted"
    t.datetime "DatePosted"
    t.string   "Program",               limit: 50
    t.integer  "fkPayee"
    t.datetime "ETLDate"
    t.string   "ProgramCode",           limit: 4
    t.integer  "fkPaymentGroup"
  end

  create_table "CommitmentActivity", primary_key: "CommitmentActivityID", force: true do |t|
    t.integer  "fkCommitment"
    t.integer  "fkCommitmentLineItem"
    t.decimal  "TotalPaidAmount",                    precision: 19, scale: 4
    t.decimal  "CurrentBalanceAmount",               precision: 19, scale: 4
    t.string   "TransactionID",           limit: 50
    t.string   "TransactionType",         limit: 50
    t.string   "TransactionStatus",       limit: 50
    t.datetime "TransactionDate"
    t.string   "TransactionDescription",  limit: 50
    t.integer  "fkAssignedWorkerCreated"
    t.datetime "ETLDate"
  end

  create_table "CommitmentLineItem", primary_key: "CommitmentLineItemID", force: true do |t|
    t.integer  "fkCommitment"
    t.integer  "fkInvoiceLineItem"
    t.decimal  "ItemAmount",                              precision: 19, scale: 4
    t.string   "ItemDescription",              limit: 50
    t.decimal  "TotalPaidAmount",                         precision: 19, scale: 4
    t.decimal  "CurrentBalanceAmount",                    precision: 19, scale: 4
    t.datetime "PostedDate"
    t.integer  "DiscountDays"
    t.decimal  "DiscountPercent",                         precision: 7,  scale: 4
    t.decimal  "DiscountAmount",                          precision: 19, scale: 4
    t.string   "Program",                      limit: 50
    t.string   "TransactionID",                limit: 50
    t.string   "TransactionType",              limit: 50
    t.string   "TransactionStatus",            limit: 50
    t.string   "TransactionDescription",       limit: 50
    t.integer  "fkAssignedWorkerCreated"
    t.integer  "fkPayee"
    t.integer  "fkReceivableActivityTransfer"
    t.datetime "ETLDate"
    t.string   "ProgramCode",                  limit: 4
    t.integer  "fkPaymentGroup"
  end

  create_table "CurrentUnitFamily", primary_key: "UnitFamilyID", force: true do |t|
    t.integer  "fkUnit",                                 null: false
    t.integer  "fkFamily"
    t.integer  "FamilySize"
    t.boolean  "IsCurrentlyHoused"
    t.string   "HeadOfHouseName",             limit: 90
    t.datetime "MoveInDate"
    t.datetime "MoveOutDate"
    t.string   "EOPReason",                   limit: 50
    t.string   "HardToHouseReason",           limit: 50
    t.string   "HardToHouseAction"
    t.string   "OverUnderHoused",             limit: 50
    t.boolean  "Violated40PCtRuleWhenHoused"
    t.boolean  "IsUnitTransfer"
    t.integer  "fkAssignedWorkerMoveIn"
    t.integer  "fkAssignedWorkerMoveOut"
    t.datetime "ETLDate"
  end

  create_table "FSSProgram", primary_key: "FSSProgramID", force: true do |t|
    t.integer  "TotalFSSSlots"
    t.integer  "TotalFSSSlotsComplete"
    t.integer  "TotalFSSSlotsOpen"
    t.integer  "NbrFamiliesCompletedPriorTo1998"
    t.integer  "NbrFamiliesCompletedPrior"
    t.integer  "NbrFamiliesReceivedEscrowContribution"
    t.datetime "ETLDate"
  end

  create_table "Family", primary_key: "FamilyID", force: true do |t|
    t.integer  "FamilySize"
    t.integer  "NumberDependants"
    t.integer  "NumberWithDisability"
    t.decimal  "GrossIncome",                            precision: 19, scale: 4
    t.decimal  "NetIncome",                              precision: 19, scale: 4
    t.decimal  "ChildCareExpenses",                      precision: 19, scale: 4
    t.decimal  "Liabilites",                             precision: 19, scale: 4
    t.string   "SubsidyStatus",               limit: 50
    t.boolean  "IsHardToHouse"
    t.boolean  "IsCurrentlyHoused"
    t.boolean  "IsVoucherIssuedUnderLeassed"
    t.boolean  "HasActiveIssue"
    t.string   "FileNameAs",                  limit: 90
    t.string   "Program",                     limit: 50
    t.integer  "fkAssignedWorker"
    t.decimal  "CurrentFSSAccountBalance",               precision: 19, scale: 4
    t.decimal  "EarnedIncomeAmount",                     precision: 19, scale: 4
    t.datetime "FSSProjectedCompletionDate"
    t.datetime "FSSActualCompletionDate"
    t.string   "FSSParticipationStatus",      limit: 25
    t.integer  "fkIncomeCategory"
    t.datetime "ETLDate"
    t.boolean  "IsActive"
    t.string   "ProgramCode",                 limit: 4
    t.decimal  "CurrentFSSEscrowCredit",                 precision: 19, scale: 4
    t.datetime "FSSContractExtendedToDate"
    t.datetime "FSSContractStartDate"
    t.datetime "FSSContractEndDate"
    t.string   "FullName",                    limit: 90
    t.string   "EntityID",                    limit: 20
    t.string   "TaxID",                       limit: 15
    t.string   "LastFourDigitID",             limit: 10
    t.string   "FSSContractStatus"
    t.decimal  "AccountBalance",                         precision: 19, scale: 4
  end

  create_table "FamilyIssue", primary_key: "FamilyIssueID", force: true do |t|
    t.string   "VoucherNumber",   limit: 15
    t.string   "Type",            limit: 20
    t.string   "ActionType",      limit: 50
    t.string   "VoucherType",     limit: 50
    t.boolean  "IsEnhanced"
    t.boolean  "IsProjectBased"
    t.boolean  "IsTenantBased"
    t.string   "Bedrooms",        limit: 3
    t.integer  "DaysUsed"
    t.integer  "DaysRemaining"
    t.integer  "fkFamily"
    t.integer  "fkUnit"
    t.datetime "IssueDate"
    t.datetime "HousedDate"
    t.datetime "ExpirationDate"
    t.datetime "EffectiveDate"
    t.datetime "TerminationDate"
    t.integer  "fkPersonAgency"
    t.datetime "ETLDate"
    t.integer  "EliteIssueID"
    t.string   "Increment",       limit: 20
  end

  create_table "FamilyMember", primary_key: "FamilyMemberID", force: true do |t|
    t.string   "Name",                        limit: 90
    t.string   "TaxID",                       limit: 15
    t.string   "EntityID",                    limit: 20
    t.datetime "BirthDate"
    t.integer  "Age"
    t.string   "Sex",                         limit: 10
    t.string   "Relation",                    limit: 50
    t.string   "Citizenship",                 limit: 50
    t.boolean  "IsDisabled"
    t.string   "Race",                        limit: 100
    t.string   "Ethnicity",                   limit: 50
    t.string   "EncryptedTaxID",              limit: 512
    t.string   "LastFourDigitID",             limit: 10
    t.boolean  "IsHeadOfHouse"
    t.integer  "fkFamily",                                null: false
    t.string   "Phone",                       limit: 50
    t.string   "PrimaryStreet",               limit: 50
    t.string   "SecondaryStreet",             limit: 50
    t.string   "Suite",                       limit: 50
    t.string   "City",                        limit: 50
    t.string   "State",                       limit: 50
    t.string   "ZIP",                         limit: 10
    t.boolean  "IsElderly"
    t.string   "Program",                     limit: 50
    t.string   "FileNameAs",                  limit: 90
    t.datetime "ETLDate"
    t.string   "Zip4",                        limit: 4
    t.string   "ProgramCode",                 limit: 4
    t.integer  "MLSosCodeCommunityService"
    t.string   "CommunityServiceHUDCode",     limit: 2
    t.string   "CommunityServiceDescription", limit: 50
  end

  create_table "FamilyMemberAsset", primary_key: "FamilyMemberAssetID", force: true do |t|
    t.string   "Type",                        limit: 50
    t.string   "RegulatoryAssetType"
    t.decimal  "CashValue",                              precision: 19, scale: 4
    t.decimal  "AnticipatedIncome",                      precision: 19, scale: 4
    t.datetime "DateVerified"
    t.integer  "fkFamilyMember",                                                  null: false
    t.string   "Location",                    limit: 50
    t.string   "LocationPrimaryStreet",       limit: 50
    t.string   "LocationSecondaryStreet",     limit: 50
    t.string   "LocationSuite",               limit: 10
    t.string   "LocationAttentionLine",       limit: 50
    t.string   "LocationCity",                limit: 25
    t.string   "LocationState",               limit: 2
    t.string   "LocationZip",                 limit: 10
    t.string   "VerificationContact",         limit: 50
    t.string   "VerificationPhone",           limit: 30
    t.string   "VerificationPrimaryStreet",   limit: 50
    t.string   "VerificationSecondaryStreet", limit: 50
    t.string   "VerificationSuite",           limit: 10
    t.string   "VerificationAttentionLine",   limit: 50
    t.string   "VerificationCity",            limit: 25
    t.string   "VerificationState",           limit: 2
    t.string   "VerificationZip",             limit: 10
    t.string   "Status",                      limit: 50
    t.datetime "DateDue"
    t.datetime "DateSent"
    t.datetime "ETLDate"
    t.string   "LocationZip4",                limit: 4
    t.string   "VerificationZip4",            limit: 4
  end

  create_table "FamilyMemberExpense", primary_key: "FamilyMemberExpenseID", force: true do |t|
    t.string   "Type",                        limit: 50
    t.string   "RegulatoryExpenseType"
    t.string   "Source",                      limit: 50
    t.decimal  "AnnualAmount",                           precision: 19, scale: 4
    t.datetime "DateVerified"
    t.integer  "fkFamilyMember",                                                  null: false
    t.string   "PeriodicFrequency",           limit: 50
    t.decimal  "PeriodicAmount",                         precision: 19, scale: 4
    t.string   "VerificationContact",         limit: 50
    t.string   "VerificationPhone",           limit: 30
    t.string   "VerificationPrimaryStreet",   limit: 50
    t.string   "VerificationSecondaryStreet", limit: 50
    t.string   "VerificationSuite",           limit: 10
    t.string   "VerificationAttentionLine",   limit: 50
    t.string   "VerificationCity",            limit: 25
    t.string   "VerificationState",           limit: 2
    t.string   "VerificationZip",             limit: 10
    t.string   "VerificationZip4",            limit: 10
    t.string   "Status",                      limit: 50
    t.datetime "DateDue"
    t.datetime "DateSent"
    t.datetime "ETLDate"
  end

  create_table "FamilyMemberIncome", primary_key: "FamilyMemberIncomeID", force: true do |t|
    t.string   "Type",                        limit: 50
    t.string   "RegulatoryIncomeType"
    t.string   "Source",                      limit: 50
    t.decimal  "IncomeAmountBeforeExclusion",            precision: 19, scale: 4
    t.decimal  "ExclusionsAmount",                       precision: 19, scale: 4
    t.decimal  "AnnualIncomeAmount",                     precision: 19, scale: 4
    t.datetime "DateVerified"
    t.integer  "fkFamilyMember",                                                  null: false
    t.string   "PeriodicFrequency",           limit: 50
    t.decimal  "PeriodicAmount",                         precision: 19, scale: 4
    t.string   "VerificationContact",         limit: 50
    t.string   "VerificationPhone",           limit: 30
    t.string   "VerificationPrimaryStreet",   limit: 50
    t.string   "VerificationSecondaryStreet", limit: 50
    t.string   "VerificationSuite",           limit: 10
    t.string   "VerificationAttentionLine",   limit: 50
    t.string   "VerificationCity",            limit: 25
    t.string   "VerificationState",           limit: 2
    t.string   "VerificationZip",             limit: 10
    t.string   "Status",                      limit: 50
    t.datetime "DateDue"
    t.datetime "DateSent"
    t.datetime "ETLDate"
    t.string   "VerificationZip4",            limit: 4
  end

  create_table "Fund", primary_key: "FundID", force: true do |t|
    t.string "Fund",                   limit: 50
    t.string "FundDescription",        limit: 50
    t.string "FundGroup",              limit: 50
    t.string "REACFundGroup",          limit: 50
    t.string "BalanceSheetFundGroup",  limit: 50
    t.string "ClosingFundGroup",       limit: 50
    t.string "ManagementFundGroup",    limit: 50
    t.string "User1Group",             limit: 50
    t.string "User2Group",             limit: 50
    t.string "OperStatementFundGroup", limit: 50
    t.string "FiscalYearEndMonth",     limit: 10
  end

  create_table "GeneralLedger", primary_key: "GeneralLedgerID", force: true do |t|
    t.decimal  "Amount",                               precision: 19, scale: 4
    t.decimal  "TotalDebitAmount",                     precision: 19, scale: 4
    t.decimal  "TotalCreditAmount",                    precision: 19, scale: 4
    t.string   "Account",                   limit: 50
    t.datetime "DateEntered"
    t.string   "Fund",                      limit: 20
    t.datetime "DatePosted"
    t.integer  "AccountingPeriodPosted"
    t.integer  "CalendarMonthPosted"
    t.string   "SourceLedger",              limit: 50
    t.integer  "BatchNumber"
    t.string   "EntryType",                 limit: 50
    t.string   "FiscalYearDescription",     limit: 50
    t.integer  "PreEncumberedDebitAmount"
    t.integer  "PreEncumberedCreditAmount"
    t.integer  "EncumberedDebitAmount"
    t.integer  "EncumberedCreditAmount"
    t.integer  "FiscalYear"
    t.string   "Program",                   limit: 50
    t.datetime "ETLDate"
    t.integer  "fkAccountingPeriod"
    t.integer  "fkFund"
    t.string   "ReferenceDesc",             limit: 50
    t.integer  "GLBatch"
    t.integer  "fkChartOfAccounts"
    t.string   "ProgramCode",               limit: 4
    t.decimal  "ActualDebitAmount",                    precision: 19, scale: 4
    t.decimal  "ActualCreditAmount",                   precision: 19, scale: 4
    t.string   "GLDescription",             limit: 50
  end

  create_table "HapUapRegister", primary_key: "HapUapRegisterID", force: true do |t|
    t.decimal  "PaymentAmount",                   precision: 19, scale: 4
    t.datetime "TransactionDate"
    t.string   "TransactionDesc",      limit: 50
    t.string   "PayeeFullName",        limit: 90
    t.integer  "fkPersonPayee"
    t.string   "FamilyFullName",       limit: 90
    t.integer  "fkFamily"
    t.string   "CaseWorkerFullName",   limit: 90
    t.integer  "fkAssignedWorker"
    t.string   "UnitAddress",          limit: 50
    t.string   "UtilityAccountNumber", limit: 50
  end

  create_table "HistoricalUnitFamily", primary_key: "UnitFamilyID", force: true do |t|
    t.integer  "fkUnit",                                 null: false
    t.integer  "fkFamily"
    t.integer  "FamilySize"
    t.boolean  "IsCurrentlyHoused"
    t.string   "HeadOfHouseName",             limit: 90
    t.datetime "MoveInDate"
    t.datetime "MoveOutDate"
    t.string   "EOPReason",                   limit: 50
    t.string   "HardToHouseReason",           limit: 50
    t.string   "HardToHouseAction"
    t.string   "OverUnderHoused",             limit: 50
    t.boolean  "Violated40PCtRuleWhenHoused"
    t.boolean  "IsUnitTransfer"
    t.integer  "fkAssignedWorkerMoveIn"
    t.integer  "fkAssignedWorkerMoveOut"
    t.datetime "ETLDate"
  end

  create_table "IncomeCategory", primary_key: "IncomeCategoryID", force: true do |t|
    t.string   "Category",            limit: 20
    t.integer  "NumberInFamily"
    t.datetime "EffectiveDate"
    t.decimal  "MinimumDollarAmount",            precision: 19, scale: 4
    t.decimal  "MaximumDollarAmount",            precision: 19, scale: 4
    t.string   "CategoryName",        limit: 50
    t.datetime "ETLDate"
  end

  create_table "Inspection", primary_key: "InspectionID", force: true do |t|
    t.integer  "IDOfInspection",                            null: false
    t.string   "InspectionType",                 limit: 50, null: false
    t.string   "RegulatoryType"
    t.string   "HQSStructureType"
    t.integer  "fkUnit",                                    null: false
    t.integer  "fkPersonHAPPayee"
    t.integer  "fkPersonOwner"
    t.integer  "fkFamily"
    t.integer  "fkApplicant"
    t.datetime "FirstRequestDate"
    t.datetime "FirstScheduledDate"
    t.datetime "FirstInspectionDate"
    t.integer  "fkInspectionActivityFirst"
    t.string   "FinalInspectionResult",          limit: 50
    t.string   "FinalRegulatoryResult"
    t.datetime "FinalRequestDate"
    t.datetime "FinalScheduledDate"
    t.datetime "FinalInspectionDate"
    t.integer  "fkInspectionActivityFinal"
    t.integer  "NumberOfPermittedReInspections"
    t.integer  "ElapsedDays"
    t.boolean  "IsFinalFailInspection"
    t.boolean  "IsQAInspection"
    t.integer  "TotalInspectionActivity"
    t.integer  "TotalNoShowInspectionActivity"
    t.integer  "TotalNoEntryInspectionActivity"
    t.string   "Program",                        limit: 50
    t.string   "ProgramCode",                    limit: 4
    t.datetime "ETLDate"
  end

  create_table "InspectionActivity", primary_key: "InspectionActivityID", force: true do |t|
    t.integer  "fkInspection",                                  null: false
    t.integer  "fkUnit",                                        null: false
    t.datetime "RequestDate"
    t.datetime "ScheduledDate"
    t.datetime "InspectionActivityDate"
    t.string   "InspectionActivityResult",           limit: 50
    t.string   "InspectionActivityRegulatoryResult"
    t.integer  "fkAssignedWorkerScheduledBy"
    t.integer  "fkAssignedWorkerInspectedBy"
    t.boolean  "HasSecondaryRoom"
    t.string   "HandHeldStatus"
    t.boolean  "HasResidentSignature"
    t.boolean  "HasInspectorSignature"
    t.text     "ResidentSignature"
    t.text     "InspectorSignature"
    t.string   "Program",                            limit: 50
    t.string   "ProgramCode",                        limit: 4
    t.datetime "ETLDate"
  end

  create_table "InspectionDeficiency", primary_key: "InspectionDeficiencyID", force: true do |t|
    t.integer  "fkInspectionActivity"
    t.integer  "fkInspection"
    t.string   "RoomCode"
    t.string   "ChecklistItem"
    t.string   "Comment"
    t.boolean  "IsEmergency"
    t.boolean  "IsHealthAndSaftey"
    t.string   "LeftCenterRight",                limit: 1
    t.string   "FrontCenterRear",                limit: 1
    t.integer  "FloorLevel"
    t.string   "PartyResponsible",               limit: 10
    t.decimal  "DamageAmount",                              precision: 19, scale: 4
    t.integer  "DaysToReinspect"
    t.datetime "FirstSightedDate"
    t.string   "FirstSightedResult",             limit: 50
    t.string   "FirstSightedRegulatoryResult"
    t.datetime "FinalInspectedDate"
    t.string   "FinalInspectedResult",           limit: 50
    t.string   "FinalInspectedRegulatoryResult"
    t.decimal  "ElapsedHours",                              precision: 8,  scale: 2
    t.decimal  "ElapsedDays",                               precision: 8,  scale: 2
    t.integer  "NumberOfTimesInspected"
  end

  create_table "Invoice", primary_key: "InvoiceID", force: true do |t|
    t.string   "InvoiceNumber",        limit: 50
    t.string   "InvoiceDescription",   limit: 50
    t.integer  "NumberOfItems"
    t.decimal  "InvoiceAmount",                   precision: 19, scale: 4
    t.decimal  "InvoiceBalanceAmount",            precision: 19, scale: 4
    t.datetime "InvoiceDate"
    t.datetime "InvoiceDueDate"
    t.datetime "DateInvoiceCreated"
    t.datetime "DateInvoiceClosed"
    t.datetime "DateInvoiceDeleted"
    t.datetime "DiscountDueDate"
    t.string   "Program",              limit: 50
    t.integer  "fkPayee"
    t.datetime "ETLDate"
    t.string   "ProgramCode",          limit: 4
    t.integer  "fkPaymentGroup"
    t.string   "PurchaseOrderNumber",  limit: 32
  end

  create_table "InvoiceActivity", primary_key: "InvoiceActivityID", force: true do |t|
    t.integer  "fkInvoice"
    t.integer  "fkInvoiceLineItem"
    t.decimal  "TotalInvoiceAmount",                 precision: 19, scale: 4
    t.decimal  "InvoiceBalanceAmount",               precision: 19, scale: 4
    t.string   "TransactionID",           limit: 50
    t.string   "TransactionType",         limit: 50
    t.string   "TransactionStatus",       limit: 50
    t.datetime "TransactionDate"
    t.string   "TransactionDescription",  limit: 50
    t.integer  "fkAssignedWorkerCreated"
    t.datetime "ETLDate"
  end

  create_table "InvoiceLineItem", primary_key: "InvoiceLineItemID", force: true do |t|
    t.integer  "fkInvoice"
    t.decimal  "ItemAmount",                         precision: 19, scale: 4
    t.string   "ItemDescription",         limit: 50
    t.integer  "Quantity"
    t.decimal  "UnitPrice",                          precision: 19, scale: 4
    t.decimal  "TotalInvoiceAmount",                 precision: 19, scale: 4
    t.decimal  "InvoiceBalanceAmount",               precision: 19, scale: 4
    t.datetime "PostedDate"
    t.integer  "DiscountDays"
    t.decimal  "DiscountPercent",                    precision: 7,  scale: 4
    t.decimal  "DiscountAmount",                     precision: 19, scale: 4
    t.string   "Program",                 limit: 50
    t.string   "TransactionID",           limit: 50
    t.string   "TransactionType",         limit: 50
    t.string   "TransactionStatus",       limit: 50
    t.string   "TransactionDescription",  limit: 50
    t.integer  "fkAssignedWorkerCreated"
    t.integer  "fkPayee"
    t.datetime "ETLDate"
    t.string   "ProgramCode",             limit: 4
    t.integer  "fkPaymentGroup"
  end

  create_table "IssueFunding", primary_key: "IssueFundingID", force: true do |t|
    t.string   "ProgramType",                  limit: 50
    t.string   "ProgramName",                  limit: 50,                          null: false
    t.string   "FundingSource",                limit: 50
    t.string   "FundingIncrement",             limit: 20
    t.decimal  "FundsAvailableAtConversion",              precision: 19, scale: 4
    t.decimal  "AllowableOverIssuePercentage",            precision: 19, scale: 4
    t.integer  "AvailableIssues"
    t.decimal  "Expensed",                                precision: 19, scale: 4
    t.integer  "CalculatedAvailableIssues"
    t.integer  "Occupied"
    t.integer  "AvailableIssuesBaseline"
    t.integer  "AvailableIssuesBudget"
    t.integer  "Searching"
    t.integer  "HUDBaselineUnits"
    t.integer  "FutureTerminations"
    t.decimal  "PreEncumbered",                           precision: 19, scale: 4
    t.integer  "BaselineCount"
    t.boolean  "IsSentToMTCS"
    t.boolean  "IsExcludedFromSEMAP"
    t.decimal  "ForecastRentAmount",                      precision: 19, scale: 4
    t.decimal  "IssueAmount",                             precision: 19, scale: 4
    t.datetime "IssueDate"
    t.datetime "IssueExpiration"
    t.datetime "ETLDate"
    t.string   "ProgramCode",                  limit: 4
  end

  create_table "MiloETLControl", id: false, force: true do |t|
    t.string   "ETLDBVersion",     limit: 10
    t.datetime "ETLStartDateTime"
    t.datetime "ETLEndDateTime"
    t.string   "Note",             limit: 100
  end

  create_table "ParticipantEvent", primary_key: "ParticipantEventID", force: true do |t|
    t.string   "ParticipantEventType",   limit: 50
    t.string   "ParticipantEventReason", limit: 50
    t.datetime "DateOfEvent"
    t.string   "Program",                limit: 50
    t.datetime "ETLDate"
    t.integer  "fkUnit"
    t.integer  "fkFamily"
    t.integer  "fkAssignedWorker"
    t.integer  "fkPersonOwner"
    t.integer  "fkPersonHAPPayee"
    t.integer  "fkIssueFunding"
    t.integer  "fkFamilyIssue"
    t.integer  "fkIncomeCategory"
    t.string   "ProgramCode",            limit: 4
  end

  create_table "Payee", primary_key: "PayeeID", force: true do |t|
    t.string   "EntityID",        limit: 20
    t.string   "FullName",        limit: 90
    t.string   "TaxID",           limit: 15
    t.string   "PayeeFileName",   limit: 90
    t.string   "PayeeInitials",   limit: 10
    t.string   "Status1099",      limit: 50
    t.string   "BusinessType",    limit: 50
    t.string   "PrimaryStreet",   limit: 50
    t.string   "SecondaryStreet", limit: 50
    t.string   "Suite",           limit: 10
    t.string   "City",            limit: 25
    t.string   "State",           limit: 4
    t.boolean  "IsActive"
    t.string   "Zip",             limit: 10
    t.string   "Phone",           limit: 50
    t.string   "Pager",           limit: 50
    t.string   "Email",           limit: 50
    t.boolean  "IsMinorityOwned"
    t.boolean  "IsWomanOwned"
    t.boolean  "IsAPVendor"
    t.decimal  "DiscountPercent",            precision: 19, scale: 4
    t.string   "LastFourDigitID", limit: 10
    t.datetime "ETLDate"
    t.string   "Zip4",            limit: 4
  end

  create_table "Payment", primary_key: "PaymentID", force: true do |t|
    t.decimal  "PaymentAmount",                  precision: 19, scale: 4
    t.string   "BankName",            limit: 50
    t.string   "BankAccountNumber",   limit: 20
    t.integer  "CheckNumber"
    t.integer  "DirectDepositNumber"
    t.string   "PaymentType",         limit: 30
    t.datetime "ItemDate"
    t.datetime "ClearDate"
    t.datetime "ReconciledDate"
    t.datetime "VoidDate"
    t.string   "Program",             limit: 50
    t.integer  "fkPayee"
    t.datetime "ETLDate"
    t.string   "ProgramCode",         limit: 4
    t.integer  "fkPaymentGroup"
  end

  create_table "PaymentGroup", primary_key: "PaymentGroupID", force: true do |t|
    t.string   "Description",       limit: 50, null: false
    t.string   "TransactionCode",   limit: 2
    t.boolean  "UseDirectDeposit"
    t.string   "ACHFormat",         limit: 3
    t.string   "TransitNumber",     limit: 10
    t.string   "AccountNumber",     limit: 20
    t.string   "ACHIndividualID",   limit: 15
    t.string   "ACHIndividualName", limit: 20
    t.string   "FullName",          limit: 90
    t.string   "TaxID",             limit: 15
    t.string   "EntityID",          limit: 20
    t.string   "PrimaryStreet",     limit: 50
    t.string   "SecondaryStreet",   limit: 50
    t.string   "Suite",             limit: 10
    t.string   "City",              limit: 25
    t.string   "State",             limit: 4
    t.string   "Zip",               limit: 10
    t.string   "Phone",             limit: 50
    t.boolean  "IsActive"
    t.string   "Zip4",              limit: 4
    t.string   "FileNameAs",        limit: 90
    t.string   "MailCode",          limit: 3
    t.string   "Program",           limit: 50
    t.datetime "ETLDate"
    t.string   "ProgramCode",       limit: 4
  end

  create_table "PaymentLineItem", primary_key: "PaymentLineItemID", force: true do |t|
    t.integer  "fkPayment"
    t.integer  "fkCommitment"
    t.decimal  "LineItemAmount",               precision: 19, scale: 4
    t.string   "BankName",          limit: 50
    t.string   "BankAccountNumber", limit: 20
    t.datetime "PostedDate"
    t.string   "Program",           limit: 50
    t.datetime "ETLDate"
    t.string   "ProgramCode",       limit: 4
  end

  create_table "Person", primary_key: "PersonID", force: true do |t|
    t.string   "EntityID",        limit: 20
    t.string   "FullName",        limit: 90
    t.string   "TaxID",           limit: 15
    t.string   "PrimaryStreet",   limit: 50
    t.string   "SecondaryStreet", limit: 50
    t.string   "Suite",           limit: 10
    t.string   "City",            limit: 25
    t.string   "State",           limit: 4
    t.string   "Zip",             limit: 10
    t.string   "Phone",           limit: 50
    t.boolean  "IsActive"
    t.boolean  "IsUnderLien"
    t.string   "FileNameAs",      limit: 90
    t.string   "LastFourDigitID", limit: 10
    t.string   "ContactName",     limit: 90
    t.datetime "ETLDate"
    t.string   "Zip4",            limit: 4
  end

  create_table "PersonRole", primary_key: "PersonRoleID", force: true do |t|
    t.integer  "RoleID",                 null: false
    t.integer  "fkPerson",               null: false
    t.string   "Program",     limit: 50, null: false
    t.string   "Role",        limit: 50
    t.datetime "ETLDate"
    t.string   "ProgramCode", limit: 4
  end

  create_table "Project", primary_key: "ProjectID", force: true do |t|
    t.string   "IDISActivityID",           limit: 20
    t.string   "Name",                     limit: 50
    t.string   "HUDProjectNumber",         limit: 50
    t.string   "Manager",                  limit: 50
    t.integer  "YearEstablished"
    t.integer  "YearConstructionComplete"
    t.boolean  "UnderDeconcentration"
    t.boolean  "ExcludeFromPHAS"
    t.boolean  "Send50058ToMTCS"
    t.integer  "YearLastMajorRehab"
    t.boolean  "IsActive"
    t.datetime "ETLDate"
    t.string   "ProgramCode",              limit: 4
  end

  create_table "Property", primary_key: "PropertyID", force: true do |t|
    t.integer  "TotalSquareFeet"
    t.integer  "SquareFeetUsed"
    t.decimal  "Longitude",                             precision: 8,  scale: 5
    t.decimal  "Latitude",                              precision: 8,  scale: 5
    t.boolean  "IsImproved"
    t.string   "Description",                limit: 50
    t.text     "Note"
    t.string   "AssessmentCode",             limit: 30
    t.decimal  "AppraisalAmount",                       precision: 19, scale: 4
    t.decimal  "ProposedAppraisalAmount",               precision: 19, scale: 4
    t.decimal  "Assessment",                            precision: 19, scale: 4
    t.decimal  "AssessmentOverride",                    precision: 19, scale: 4
    t.decimal  "ProposedAssessment",                    precision: 19, scale: 4
    t.decimal  "ProposedAssessmentOverride",            precision: 19, scale: 4
    t.string   "AreTaxesPaid",               limit: 3
    t.decimal  "TaxAmount",                             precision: 19, scale: 4
    t.decimal  "AsIfAppraisalAmount",                   precision: 19, scale: 4
    t.decimal  "BeforeWorkAssessment",                  precision: 19, scale: 4
    t.decimal  "AfterWorkAssessment",                   precision: 19, scale: 4
    t.decimal  "AssetValue",                            precision: 19, scale: 4
    t.datetime "BNOAchievedDate"
    t.string   "BNOAchievedReason",          limit: 50
    t.string   "SurveyArea",                 limit: 50
    t.string   "County",                     limit: 50
    t.string   "Region",                     limit: 50
    t.string   "CensusTract",                limit: 15
    t.string   "PoliticalWard",              limit: 10
    t.string   "Neighborhood",               limit: 50
    t.string   "IDOfProperty",               limit: 20
    t.datetime "ETLDate"
  end

  create_table "Receipt", primary_key: "ReceiptID", force: true do |t|
    t.decimal  "PaymentAmount",                  precision: 19, scale: 4
    t.datetime "PaymentDate"
    t.string   "BankAccountNumber",   limit: 20
    t.integer  "CheckNumber"
    t.integer  "DirectDepositNumber"
    t.datetime "ETLDate"
  end

  create_table "Receivable", primary_key: "ReceivableID", force: true do |t|
    t.string   "ChargeDescription",    limit: 50
    t.decimal  "TotalChargeAmount",               precision: 19, scale: 4
    t.decimal  "AmountReceived",                  precision: 19, scale: 4
    t.decimal  "CurrentBalanceAmount",            precision: 19, scale: 4
    t.datetime "DatePosted"
    t.datetime "DateEntered"
    t.string   "Program",              limit: 50
    t.integer  "fkPersonCustomer"
    t.datetime "ETLDate"
    t.string   "ProgramCode",          limit: 4
  end

  create_table "ReceivableActivity", primary_key: "ReceivableActivityID", force: true do |t|
    t.integer  "fkReceivable"
    t.integer  "fkReceipt"
    t.decimal  "ItemAmount",                         precision: 19, scale: 4
    t.datetime "DatePosted"
    t.datetime "DateEntered"
    t.string   "Program",                 limit: 50
    t.string   "TransactionID",           limit: 50
    t.string   "TransactionType",         limit: 50
    t.string   "TransactionStatus",       limit: 50
    t.string   "TransactionDescription",  limit: 50
    t.integer  "fkAssignedWorkerCreated"
    t.integer  "fkPersonCustomer"
    t.datetime "ETLDate"
    t.string   "ProgramCode",             limit: 4
  end

  create_table "ReceivableActivityRefund", primary_key: "ReceivableActivityRefundID", force: true do |t|
    t.integer  "fkReceivableActivity"
    t.integer  "fkReceivable"
    t.integer  "fkCommitmentLineItemRefund"
    t.datetime "ETLDate"
  end

  create_table "RentStandards", primary_key: "RentStandardsID", force: true do |t|
    t.string   "Description",            limit: 225
    t.decimal  "RentAmountSRO",                      precision: 19, scale: 4
    t.decimal  "RentAmount0BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount1BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount2BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount3BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount4BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount5BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount6BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount7BR",                      precision: 19, scale: 4
    t.decimal  "RentAmount8BR",                      precision: 19, scale: 4
    t.string   "StandardType",           limit: 10
    t.datetime "EffectiveDate"
    t.string   "Jurisdiction",           limit: 50
    t.string   "State",                  limit: 50
    t.string   "County",                 limit: 50
    t.boolean  "RevisedInd"
    t.string   "CensusTract",            limit: 15
    t.decimal  "IncomeLevelPercentage",              precision: 7,  scale: 4
    t.datetime "ETLDate"
    t.decimal  "RentAmountManufactured",             precision: 19, scale: 4
    t.decimal  "VPSExceptionPct",                    precision: 7,  scale: 4
  end

  create_table "SubLedger", primary_key: "SubLedgerID", force: true do |t|
    t.decimal  "Amount",                            precision: 19, scale: 4
    t.decimal  "DebitAmount",                       precision: 19, scale: 4
    t.decimal  "CreditAmount",                      precision: 19, scale: 4
    t.string   "Account",                limit: 50
    t.datetime "DateEntered"
    t.string   "Fund",                   limit: 20
    t.datetime "DatePosted"
    t.integer  "AccountingPeriodPosted"
    t.integer  "CalendarMonthPosted"
    t.string   "SourceLedger",           limit: 50
    t.integer  "BatchNumber"
    t.string   "EntryType",              limit: 50
    t.string   "FiscalYear",             limit: 50
    t.integer  "fkChartOfAccounts"
    t.datetime "ETLDate"
    t.integer  "fkAccountingPeriod"
    t.integer  "fkFund"
    t.string   "GLDescription",          limit: 50
  end

  create_table "Unit", primary_key: "UnitID", force: true do |t|
    t.decimal  "Rent"
    t.string   "IDofUnit",                     limit: 50
    t.string   "IDofBuilding",                 limit: 50
    t.integer  "fkBuilding"
    t.integer  "fkProject"
    t.string   "DevelopmentID",                limit: 50
    t.string   "DevelopmentName",              limit: 50
    t.string   "StructureType",                limit: 50
    t.string   "CensusTract",                  limit: 50
    t.string   "UtilityLocality",              limit: 50
    t.integer  "BedroomsCount"
    t.integer  "SleepingRoomsCount"
    t.integer  "FullBathsCount"
    t.integer  "HalfBathsCount"
    t.boolean  "IsHazardousMaterialsPresent"
    t.boolean  "IsAccessibleUnit"
    t.boolean  "IsAbatedRent"
    t.string   "ProgramName",                  limit: 50
    t.string   "UnitPrimaryStreet",            limit: 50
    t.string   "UnitSecondaryStreet",          limit: 50
    t.string   "UnitSuite",                    limit: 50
    t.string   "UnitCity",                     limit: 50
    t.string   "UnitState",                    limit: 50
    t.string   "UnitZip",                      limit: 50
    t.string   "OwnerName",                    limit: 90
    t.string   "OwnerPhone",                   limit: 50
    t.string   "LastInspectionOutcome",        limit: 50
    t.datetime "LastInspectionDate"
    t.datetime "DateLastPassedInspection"
    t.datetime "NextInspectionDate"
    t.boolean  "IsAvailableToLease"
    t.boolean  "IsAvailableToShow"
    t.string   "PHASStatus",                   limit: 50
    t.string   "PHASCategory",                 limit: 50
    t.string   "MaintenanceStatus",            limit: 50
    t.boolean  "IsSharedHousing"
    t.string   "UnitType",                     limit: 50
    t.string   "HousingType",                  limit: 50
    t.integer  "UnitFloor"
    t.integer  "SquareFeet"
    t.string   "BuildingEntranceNumber",       limit: 3
    t.boolean  "ExcludedFromPHAS"
    t.datetime "DateAbated"
    t.datetime "DateVacated"
    t.integer  "NumberDaysVacant"
    t.datetime "DateAvailable"
    t.integer  "NumberDaysAvailable"
    t.datetime "DateOccupied"
    t.integer  "NumberDaysOccupied"
    t.datetime "OffLineDate"
    t.datetime "ScheduledDemolitionDate"
    t.datetime "KeysReturnedDate"
    t.datetime "LeaseOfferStartDate"
    t.datetime "LeaseOfferEndDate"
    t.boolean  "IsActiveOfferAccepted"
    t.string   "ActiveOfferType",              limit: 15
    t.boolean  "UnitHasResidentPaidUtilities"
    t.string   "AmpID",                        limit: 50
    t.string   "AmpName",                      limit: 50
    t.string   "EliteVersion",                 limit: 10
    t.datetime "UnitStatusEffectiveDate"
    t.string   "IDOfProperty",                 limit: 20
    t.datetime "ETLDate"
    t.string   "ModernizationCategory",        limit: 50
    t.string   "ADAFeatureList",               limit: 5000
    t.string   "UnitZip4",                     limit: 4
    t.string   "ProgramCode",                  limit: 4
    t.integer  "DateBuilt"
    t.string   "FMRArea",                      limit: 50
    t.string   "VPSLocality",                  limit: 50
    t.decimal  "UnitContractRent",                          precision: 19, scale: 4
    t.integer  "fkAssignedWorkerInspector"
    t.datetime "InitialHQSInspectionDate"
    t.datetime "LastAnnualHQSInspectionDate"
    t.string   "PoliticalWard",                limit: 50
  end

  create_table "UnitEvent", primary_key: "UnitEventID", force: true do |t|
    t.string   "UnitEventReason",       limit: 50
    t.string   "UnitEventType",         limit: 50
    t.datetime "DateOfEvent"
    t.string   "Program",               limit: 50
    t.string   "LastInspectionOutcome", limit: 50
    t.string   "MaintenanceStatus",     limit: 50
    t.boolean  "IsShowable"
    t.boolean  "IsAvailableToLease"
    t.string   "PHASStatus",            limit: 50
    t.string   "PHASCategory",          limit: 50
    t.datetime "DateKeysReturned"
    t.integer  "fkAssignedWorker"
    t.integer  "fkFamily"
    t.integer  "fkPersonOwner"
    t.integer  "fkUnit"
    t.string   "ProgramCode",           limit: 4
  end

  create_table "UnitGroup", primary_key: "UnitGroupID", force: true do |t|
    t.integer  "UnitID"
    t.string   "GroupValue",     limit: 50
    t.string   "GroupName",      limit: 50
    t.string   "GroupGLSegment", limit: 50
    t.datetime "ETLDate"
    t.integer  "fkUnit"
  end

  create_table "UnitMonth", primary_key: "UnitMonthID", force: true do |t|
    t.integer  "InitialCount"
    t.integer  "AdjustedCount"
    t.string   "FundingIncrement", limit: 20
    t.string   "FundingSource",    limit: 50
    t.string   "Program",          limit: 50
    t.datetime "EffectiveDate"
    t.string   "IssueType",        limit: 50
    t.string   "IssueAction",      limit: 50
    t.string   "VoucherType",      limit: 50
    t.datetime "ETLDate"
    t.string   "ProgramCode",      limit: 4
  end

  create_table "UnitRentHistory", primary_key: "UnitRentHistoryID", force: true do |t|
    t.integer  "fkUnit",                                           null: false
    t.decimal  "RequestedRentAmount",     precision: 19, scale: 4
    t.decimal  "LastRentChangeAmount",    precision: 19, scale: 4
    t.string   "RentChangeReason"
    t.boolean  "IsRentIncreaseJustified"
    t.datetime "LastRentIncreaseDate"
    t.datetime "OverrideDate"
    t.datetime "ETLDate"
  end

  create_table "UnitTurnAround", primary_key: "UnitTurnAroundID", force: true do |t|
    t.datetime "ProjectedMoveOutDate"
    t.string   "ProjectedMoveOutReason"
    t.datetime "VacateDate"
    t.datetime "AvailableDate"
    t.datetime "MoveInDate"
    t.integer  "ExemptforCapitalDays"
    t.integer  "ExemptforOtherDays"
    t.integer  "DownDays"
    t.integer  "MakeReadyDays"
    t.integer  "LeaseUpDays"
    t.integer  "TotalVacancyDays"
    t.string   "ModernizationDuringVacancy", limit: 3
    t.string   "ResidentType",               limit: 15
    t.integer  "fkUnit"
    t.integer  "fkProject"
    t.integer  "fkFamilyMoveIn"
    t.integer  "fkFamilyMoveOut"
    t.boolean  "IsOverHousedAtMoveIn"
    t.boolean  "IsUnderHousedAtMoveIn"
    t.string   "UnitID",                     limit: 50
    t.datetime "ProjectedReadyDate"
    t.datetime "ETLDate"
    t.string   "EOPReason",                  limit: 50
  end

  create_table "UtilityAllowance", primary_key: "UtilityAllowanceID", force: true do |t|
    t.decimal  "BedroomAmountSRO",                 precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount0",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount1",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount2",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount3",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount4",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount5",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount6",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount7",                   precision: 19, scale: 4, null: false
    t.decimal  "BedroomAmount8",                   precision: 19, scale: 4, null: false
    t.decimal  "AdjustmentPercentage",             precision: 7,  scale: 4
    t.decimal  "UnitAmount",                       precision: 7,  scale: 4
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.datetime "ScheduleEffectiveDate",                                     null: false
    t.string   "Utility",               limit: 50,                          null: false
    t.string   "UtilityUse",            limit: 50,                          null: false
    t.string   "StructureType",         limit: 50,                          null: false
    t.string   "Locality",              limit: 50,                          null: false
    t.integer  "fkUnit"
    t.string   "Program",               limit: 50
    t.datetime "ETLDate"
    t.string   "ProgramCode",           limit: 4
  end

  create_table "UtilityReimbursement", primary_key: "UtilityReimbursementID", force: true do |t|
    t.integer  "tnSummaryTranPk"
    t.decimal  "AmountToRefund",                         precision: 19, scale: 4
    t.integer  "tnTranOriginalPk"
    t.integer  "fkFamily"
    t.string   "FamilyFullName",             limit: 90
    t.datetime "TransactionDate"
    t.string   "TransactionDesc",            limit: 50
    t.string   "ArCode",                     limit: 50
    t.integer  "fkProject"
    t.integer  "fkPersonPayee"
    t.integer  "fkPaymentGroupPayee"
    t.string   "PayeeFullName",              limit: 90
    t.string   "PayeePaymentGroupDesc",      limit: 50
    t.integer  "fkPersonAltPayee"
    t.integer  "fkPaymentGroupAltPayee"
    t.string   "AltPayeeFullName",           limit: 90
    t.string   "AltPayeePaymentGroupDesc",   limit: 50
    t.string   "BothPayeesFullName",         limit: 180
    t.string   "BothPayeesPaymentGroupDesc", limit: 180
    t.string   "UtilityAccountNumber",       limit: 50
    t.integer  "fkUnit"
    t.string   "UnitId",                     limit: 50
    t.string   "UnitAddress",                limit: 50
    t.integer  "AmountToRefundCents"
  end

  create_table "WaitingList", primary_key: "WaitingListID", force: true do |t|
    t.string   "Description",              limit: 50
    t.string   "IsOpen",                   limit: 3
    t.string   "UseBedroomSize",           limit: 3
    t.string   "NeedResequence",           limit: 3
    t.datetime "LastSortDateTime"
    t.text     "LastSortCriteria"
    t.string   "LastSortCriteriaUsed"
    t.string   "NeedToRebuildPreferences", limit: 3
    t.string   "ExportPath",               limit: 128
    t.string   "TargetModuleCode",         limit: 4
    t.integer  "ElderlyAge"
    t.datetime "ETLDate"
  end

  create_table "WaitingListApplicantStatus", primary_key: "WaitingListApplicantStatusID", force: true do |t|
    t.string   "WaitingListStatus",      limit: 50
    t.string   "ReasonForStatus",        limit: 50
    t.datetime "DateOfStatus"
    t.string   "Program",                limit: 50
    t.datetime "ETLDate"
    t.integer  "fkUnit"
    t.integer  "fkApplicant"
    t.integer  "fkAssignedWorker"
    t.integer  "fkWaitingList"
    t.string   "ProgramCode",            limit: 4
    t.integer  "fkApplicantWaitingList"
  end

  create_table "WorkOrder", primary_key: "WorkOrderID", force: true do |t|
    t.integer  "WorkOrderNumber",                    null: false
    t.text     "Description"
    t.text     "Solution"
    t.datetime "EnteredDate"
    t.boolean  "IsEmergency"
    t.datetime "ClosedDate"
    t.datetime "DueDate"
    t.string   "Status",                 limit: 50
    t.string   "Priority",               limit: 50
    t.boolean  "IsOriginatingWorkOrder"
    t.boolean  "IsMakeReady"
    t.integer  "fkFamily"
    t.string   "PersonEntered",          limit: 50
    t.string   "PersonAssigned",         limit: 50
    t.string   "PersonApproved",         limit: 50
    t.integer  "fkUnit"
    t.datetime "ETLDate"
    t.string   "WorkOrderCrew",          limit: 50
    t.string   "FundingSource",          limit: 50
    t.string   "MaintenanceArea",        limit: 50
    t.string   "Originator",             limit: 50
    t.string   "RepairCause",            limit: 50
    t.string   "LaborSource",            limit: 225
    t.string   "MayEnter",               limit: 50
    t.string   "WorkOrderTask",          limit: 50
    t.datetime "DatePrinted"
    t.string   "WorkOrderVendorID",      limit: 20
    t.string   "WorkOrderVendor",        limit: 90
    t.string   "TempPhone",              limit: 50
    t.string   "MakeReady",              limit: 3
    t.string   "DispatchByRadio",        limit: 3
    t.string   "ReferenceNumber",        limit: 30
  end

  create_table "stageADAFeatureTable", id: false, force: true do |t|
    t.integer "fkpmUnit",       null: false
    t.text    "ADAFeatureList"
  end

  create_table "stageLedger", id: false, force: true do |t|
    t.integer  "GeneralLedgerID",                                               null: false
    t.decimal  "Amount",                               precision: 19, scale: 4
    t.decimal  "TotalDebitAmount",                     precision: 19, scale: 4
    t.decimal  "TotalCreditAmount",                    precision: 19, scale: 4
    t.string   "Account",                   limit: 50
    t.datetime "DateEntered"
    t.string   "Fund",                      limit: 20
    t.datetime "DatePosted"
    t.integer  "AccountingPeriodPosted"
    t.integer  "CalendarMonthPosted"
    t.string   "SourceLedger",              limit: 50
    t.integer  "BatchNumber"
    t.string   "EntryType",                 limit: 50
    t.string   "FiscalYearDescription",     limit: 50
    t.integer  "PreEncumberedDebitAmount"
    t.integer  "PreEncumberedCreditAmount"
    t.integer  "EncumberedDebitAmount"
    t.integer  "EncumberedCreditAmount"
    t.integer  "FiscalYear"
    t.string   "Program",                   limit: 50
    t.string   "ReferenceDesc",             limit: 50
    t.integer  "GLBatch"
    t.string   "ProgramCode",               limit: 4
    t.decimal  "ActualDebitAmount",                    precision: 19, scale: 4
    t.decimal  "ActualCreditAmount",                   precision: 19, scale: 4
    t.string   "GLDescription",             limit: 50
  end

  create_table "stageParticipantEvent", primary_key: "ParticipantEventID", force: true do |t|
    t.string   "ParticipantEventType",         limit: 50
    t.string   "ParticipantEventReason",       limit: 50
    t.datetime "DateOfEvent"
    t.string   "Program",                      limit: 50
    t.string   "FundingIncrement",             limit: 20
    t.string   "FundingSource",                limit: 50
    t.integer  "fkUnit"
    t.integer  "fkFamily"
    t.integer  "fkAssignedWorker"
    t.integer  "fkPersonOwner"
    t.integer  "fkPersonHAPPayee"
    t.string   "FamilyMemberFullName",         limit: 90
    t.string   "FamilyMemberTaxID",            limit: 15
    t.string   "FamilyMemberEntityID",         limit: 20
    t.string   "IssueType",                    limit: 20
    t.string   "IssueAction",                  limit: 50
    t.decimal  "IncomeCategoryIncomeAmount",              precision: 19, scale: 4
    t.string   "IncomeCategoryName",           limit: 50
    t.integer  "IncomeCategoryNumberInFamily"
    t.datetime "ETLDate"
    t.integer  "fkFamilyMember"
    t.integer  "fkIssueFunding"
    t.integer  "fkFamilyIssue"
    t.integer  "fkIncomeCategory"
    t.string   "IssueVoucherNumber",           limit: 15
    t.datetime "IssueEffectiveDate"
    t.string   "ProgramCode",                  limit: 4
  end

  create_table "stageRentStandards", id: false, force: true do |t|
    t.string   "Description",           limit: 225
    t.decimal  "RentAmountSRO",                     precision: 19, scale: 4
    t.decimal  "RentAmount0BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount1BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount2BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount3BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount4BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount5BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount6BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount7BR",                     precision: 19, scale: 4
    t.decimal  "RentAmount8BR",                     precision: 19, scale: 4
    t.string   "StandardType",          limit: 10
    t.datetime "EffectiveDate"
    t.string   "Jurisdiction",          limit: 50
    t.string   "State",                 limit: 50
    t.string   "County",                limit: 50
    t.boolean  "RevisedInd"
    t.string   "CensusTract",           limit: 15
    t.decimal  "IncomeLevelPercentage",             precision: 7,  scale: 4
  end

  create_table "stageUnitEvent", primary_key: "UnitEventID", force: true do |t|
    t.string   "UnitEventReason",       limit: 50
    t.string   "UnitEventType",         limit: 50
    t.datetime "DateOfEvent"
    t.string   "Program",               limit: 50
    t.string   "LastInspectionOutcome", limit: 50
    t.string   "MaintenanceStatus",     limit: 50
    t.boolean  "IsShowable"
    t.boolean  "IsAvailableToLease"
    t.string   "PHASStatus",            limit: 50
    t.string   "PHASCategory",          limit: 50
    t.datetime "DateKeysReturned"
    t.integer  "fkAssignedWorker"
    t.integer  "fkFamily"
    t.integer  "fkPersonOwner"
    t.integer  "fkUnit"
    t.string   "ProgramCode",           limit: 4
  end

  create_table "stageUnitLeaseUp", id: false, force: true do |t|
    t.integer  "UnitID",                                    null: false
    t.integer  "liParticipantUnitLinkPk"
    t.integer  "WLfkosParticipantAcceptedOffer"
    t.boolean  "ActiveOfferAccepted"
    t.string   "ActiveOfferType",                limit: 15
    t.integer  "LastLeaseUpPK"
    t.datetime "AcceptedOfferLeaseScheduleDate"
    t.datetime "AcceptedOfferLeaseStartDate"
    t.datetime "AcceptedOfferLeaseEndDate"
    t.string   "AcceptedOfferLeaseTerm",         limit: 50
  end

  create_table "stageVacancyDetail", primary_key: "RecordSequence", force: true do |t|
    t.integer  "pmVacancyDetailPk"
    t.integer  "fkpmVacancyHeader"
    t.string   "Description",                 limit: 50
    t.datetime "EffectiveDate"
    t.integer  "fkMLSosCodePHASCategory",                                         null: false
    t.integer  "fkliVacancyStatus"
    t.datetime "ProjectedEndDate"
    t.string   "ProjectedEndDateReason"
    t.string   "Status",                      limit: 50
    t.string   "UserVacancyCategory",         limit: 50
    t.string   "DetailAssignedPHASCategory"
    t.string   "StatusPHASCategory"
    t.integer  "NextpmVacancyDetailPk"
    t.datetime "NextVacancyEffectiveDate"
    t.decimal  "DaysInStatusUsingMinutes",               precision: 19, scale: 3
    t.decimal  "DaysInStatusUsingFullDays",              precision: 19, scale: 3
    t.integer  "LastpmVacancyDetailPk"
    t.datetime "pmVacancyHeaderClosedDate"
    t.integer  "FirstRecordSequenceWithDays"
  end

  create_table "stageWaitingListApplicantStatus", primary_key: "WaitingListApplicantStatusID", force: true do |t|
    t.string   "WaitingListStatus", limit: 50
    t.string   "ReasonForStatus",   limit: 50
    t.datetime "DateOfStatus"
    t.string   "Program",           limit: 50
    t.datetime "ETLDate"
    t.integer  "fkUnit"
    t.integer  "fkApplicant"
    t.integer  "fkAssignedWorker"
    t.integer  "fkWaitingList"
    t.string   "ProgramCode",       limit: 4
  end

end
