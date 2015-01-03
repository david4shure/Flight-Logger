class LogEntriesController < ApplicationController
  def new
    @logentry = LogEntry.new
  end
  
  def index
    @logentries = LogEntry.all
  end

  def show
    @logentry = LogEntry.find params[:id]
  end
end
