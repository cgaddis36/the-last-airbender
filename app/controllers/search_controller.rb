class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @members = Member.find_members(nation)

  end


end
