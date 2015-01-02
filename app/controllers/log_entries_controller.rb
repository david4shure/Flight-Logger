class LogEntriesController < ApplicationController
  def index
    @logentries = LogEntry.all
  end

  def show
    @logentry = LogEntry.find params[:id]
  end
end
