import consumer from "./consumer"

consumer.subscriptions.create("SearchChannel", {
  connected() {
    console.log("Connected to search channel")
  },

  disconnected() {
    console.log("Disconnected from search channel")
  },

  received(data) {
    // Update search results on the page
  },

  search(query) {
    this.perform("search", { query: query })
  }
})
