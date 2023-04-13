class SearchChannel < ApplicationCable::Channel
  def subscribed
    stream_from "search_channel"
  end

  def search(data)
    search_results = Article.search(data["search"])
    search_html = ApplicationController.render(
      partial: "articles/search_results",
      locals: { articles: search_results }
    )

    ActionCable.server.broadcast "search_channel", html: search_html
  end
end

