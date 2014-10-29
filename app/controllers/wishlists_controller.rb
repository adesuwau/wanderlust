class WishlistsController < ApplicationController


def countries
   @countries = current_user.wishlists.map do |wish|
      Country.find_country_by_name(wish.country_name).alpha3
    end
    render json: @countries
end

def new
    @wishlist = Wishlist.new
    respond_to do |format|
        format.js
      end
end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.user_id = current_user.id
    respond_to do |format|
      if @wishlist.save
        format.html { redirect_to user_trips_path(current_user) }
        # format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
        format.js { render :action => 'new' }
      end
    end
  end

  private

      def wishlist_params
      params.require(:wishlist).permit(:country_name, :city_name, :tentative_dates)
    end






















end
