class DashboardController < ApplicationController
  def residents
  end

  def waitlist
  end

  def data
    @public_housing_units = Unit.where(ProgramCode: "LIPH").count
    @voucher_units = Unit.where(ProgramCode: "S8").count
    @families = Family.housed.count
    @individuals = Family.joins(:familymembers).count
    @random_rent = Family.housed.first.certifications.last.RentChargeAmount.to_i
  end
end
