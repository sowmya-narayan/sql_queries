class HomeController < ApplicationController

  def index
    if params[:query].present?
      @records = ActiveRecord::Base.connection.select_all(params[:query]) rescue false
      if @records
        @header = @records.columns
        @data = @records.rows
      else
        @header = ["wrong query"]
        @data = []      
      end
    else
      @header = []
      @data = []
    end
  end

end
