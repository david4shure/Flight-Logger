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
    @logentry = LogEntry.new params[:log_entry]
    if @logentry.save
      redirect_to log_entry_path(@logentry)
    else
      render "/log_entries/new"
    end
  end
end
