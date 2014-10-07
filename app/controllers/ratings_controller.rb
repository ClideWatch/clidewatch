class RatingsController < ApplicationController

  def index
    @ratings = []

    Clide.all.each do | a_clide |
      web         = n_webs         = native    = n_natives     = stability = n_stabilities =
      performance = n_performances = lag       = n_lags        = features  = n_featuress   =
      debugging   = n_debuggings   = community = n_communities = support   = n_supports    =
      pricing     = n_pricings     = overall   = n_overalls    = 0

      a_clide.ratings.all.each do | a_rating |
        web        += a_rating.web         and n_webs         += 1 if a_rating.web
        native     += a_rating.native      and n_natives      += 1 if a_rating.native
        stability  += a_rating.stability   and n_stabilities  += 1 if a_rating.stability
        performance+= a_rating.performance and n_performances += 1 if a_rating.performance
        lag        += a_rating.lag         and n_lags         += 1 if a_rating.lag
        features   += a_rating.features    and n_featuress    += 1 if a_rating.features
        debugging  += a_rating.debugging   and n_debuggings   += 1 if a_rating.debugging
        community  += a_rating.community   and n_communities  += 1 if a_rating.community
        support    += a_rating.support     and n_supports     += 1 if a_rating.support
        pricing    += a_rating.pricing     and n_pricings     += 1 if a_rating.pricing
        overall    += a_rating.overall     and n_overalls     += 1 if a_rating.overall
      end

      web         /= n_webs        .to_f unless n_webs        .zero?
      native      /= n_natives     .to_f unless n_natives     .zero?
      stability   /= n_stabilities .to_f unless n_stabilities .zero?
      performance /= n_performances.to_f unless n_performances.zero?
      lag         /= n_lags        .to_f unless n_lags        .zero?
      features    /= n_featuress   .to_f unless n_featuress   .zero?
      debugging   /= n_debuggings  .to_f unless n_debuggings  .zero?
      community   /= n_communities .to_f unless n_communities .zero?
      support     /= n_supports    .to_f unless n_supports    .zero?
      pricing     /= n_pricings    .to_f unless n_pricings    .zero?
      overall     /= n_overalls    .to_f unless n_overalls    .zero?

      @ratings <<
      {
        :name        => a_clide.name ,
        :web         => web          ,
        :native      => native       ,
        :stability   => stability    ,
        :performance => performance  ,
        :lag         => lag          ,
        :features    => features     ,
        :debugging   => debugging    ,
        :community   => community    ,
        :support     => support      ,
        :pricing     => pricing      ,
        :overall     => overall
      }
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ratings }
    end
  end

  def new
    @rating = Rating.new
    @clides = Clide.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rating }
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def create
    @rating    = Rating.new(params[:rating])
    @rating.ip = request.remote_ip

    respond_to do |format|
      if @rating.save
        format.html { redirect_to ratings_url , notice: 'Rating was successfully created.' }
        format.json { render json: @rating , status: :created , location: @rating }
      else
        format.html { @clides = Clide.all ; render action: "new" }
        format.json { render json: @rating.errors , status: :unprocessable_entity }
      end
    end
  end

end
