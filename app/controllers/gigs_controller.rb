class GigsController < ApplicationController

    def index
        gigs = Gig.all
        render json:  { status: 200, gigs: gigs }
    end

    def destroy
        gig = Gig.destroy(params[:id])
        render json: { status: 204 }
    end


    def create
    @gig = Gig.new(gig_params)

        if @gig.save
            render json: { status: 201, gig: @gig }
        else
            render json: { status: 422, gig: @gig }
        end
    end

    def show
        puts params
        gig = Gig.find(params[:id])
        render json: { status: 200, gig: gig }
    end

    private

        def gig_params
            params.required(:gig).permit(:hidden, :band, :venue_stream, :v_s_link, :support, :date, :time)
        end


end