class AnalyticsController < ApplicationController
  def index
    @search_terms = SearchTerm.group(:term).count
  end
end
