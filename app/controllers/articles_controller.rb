class ArticlesController < ApplicationController
  def index
    @articles = Article.search(params[:search])
    ActionCable.server.broadcast "search_channel", {search: params[:search]}
    respond_to do |format|
      format.html
      format.js
    end
  end

  def search
    @articles = Article.search(params[:query])
  end

  private

  def record_search(search_term)
    SearchTerm.create(term: search_term)
  end
end
