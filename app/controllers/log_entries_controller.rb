class LogEntriesController < ApplicationController
  before_filter :authenticate_user!

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
    @logentry = current_user.log_entries.new(params[:log_entry])

    if @logentry.save
      redirect_to log_entry_path(@logentry)
    else
      render "/log_entries/new"
    end
  end
end
