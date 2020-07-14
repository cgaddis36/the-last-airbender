class SearchController < ApplicationController
  def index
    nation = params[:nation]

    @members = Member.find_citizens(nation)
  end
end
