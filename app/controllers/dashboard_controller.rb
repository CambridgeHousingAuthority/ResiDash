class DashboardController < ApplicationController
  def residents
  end

  def waitlist
  end

  def data
    count = 0
    Project.find_each do |project|
      count = count + project.units.count
    end
    @units = count
    @families = Family.housed.count
    
  end
end
