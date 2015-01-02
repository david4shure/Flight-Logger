class LogentriesController < ApplicationController
  def show
    @logentries = Logentry.all
  end
end
