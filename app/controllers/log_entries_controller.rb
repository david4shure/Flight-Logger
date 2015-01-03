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

  def create
    @logentry = LogEntry.create params[:log_entry]
    if @logentry.valid?
      redirect_to "/log_entries/new"
    else
      render "/log_entries/new"
    end
  end
end
