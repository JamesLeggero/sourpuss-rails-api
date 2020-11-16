class GigsController < ApplicationController

    def index
        render json:  { status: 200, gigs: Gig.all }
    end

    def show
        puts params
        gig = Gig.find(params[:id])
        render json: { status: 200, gig: gig }
    end


end