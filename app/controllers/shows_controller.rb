class ShowsController < BaseController
  def index
    @shows = Show.all
    @shows = @shows.in_alphabetical_order

    render json: @shows
  end
end
