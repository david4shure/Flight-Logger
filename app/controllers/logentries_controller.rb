class LogentriesController < ApplicationController
  def index
    @logentries = Logentry.all
  end

  def show
    @logentry = Logentry.find params[:id]
  end
end
