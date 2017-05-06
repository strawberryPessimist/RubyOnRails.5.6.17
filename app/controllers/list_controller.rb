class ListController < ApplicationController
  def index
    @collection = ["people","places", "things", "verbs", "and", "such"]
    @word = "coarse"
  end
end
