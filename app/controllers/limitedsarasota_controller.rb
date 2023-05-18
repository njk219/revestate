class LimitedsarasotaController < ApplicationController
  def index
    matching_limitedsarasota = Limitedsarasotum.all

    @list_of_limitedsarasota = matching_limitedsarasota.order({ :created_at => :desc })

    render({ :template => "limitedsarasota/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_limitedsarasota = Limitedsarasotum.where({ :id => the_id })

    @the_limitedsarasotum = matching_limitedsarasota.at(0)

    render({ :template => "limitedsarasota/show.html.erb" })
  end

  def create
    the_limitedsarasotum = Limitedsarasotum.new
    the_limitedsarasotum.address = params.fetch("query_address")
    the_limitedsarasotum.year_built = params.fetch("query_year_built")
    the_limitedsarasotum.land_area = params.fetch("query_land_area")
    the_limitedsarasotum.living_area = params.fetch("query_living_area")
    the_limitedsarasotum.ownership = params.fetch("query_ownership")
    the_limitedsarasotum.municipality = params.fetch("query_municipality")
    the_limitedsarasotum.subdivision = params.fetch("query_subdivision")
    the_limitedsarasotum.zoning = params.fetch("query_zoning")
    the_limitedsarasotum.total_living_units = params.fetch("query_total_living_units")
    the_limitedsarasotum.buildings = params.fetch("query_buildings")
    the_limitedsarasotum.beds = params.fetch("query_beds")
    the_limitedsarasotum.baths = params.fetch("query_baths")
    the_limitedsarasotum.half_baths = params.fetch("query_half_baths")
    the_limitedsarasotum.eff_year_built = params.fetch("query_eff_year_built")
    the_limitedsarasotum.gross_area = params.fetch("query_gross_area")
    the_limitedsarasotum.stories = params.fetch("query_stories")
    the_limitedsarasotum.values_years = params.fetch("query_values_years")
    the_limitedsarasotum.values_land = params.fetch("query_values_land")
    the_limitedsarasotum.values_building = params.fetch("query_values_building")
    the_limitedsarasotum.values_extra_features = params.fetch("query_values_extra_features")
    the_limitedsarasotum.values_just = params.fetch("query_values_just")
    the_limitedsarasotum.values_assessed = params.fetch("query_values_assessed")
    the_limitedsarasotum.values_exemptions = params.fetch("query_values_exemptions")
    the_limitedsarasotum.values_taxable = params.fetch("query_values_taxable")
    the_limitedsarasotum.values_cap = params.fetch("query_values_cap")
    the_limitedsarasotum.transfer_dates = params.fetch("query_transfer_dates")
    the_limitedsarasotum.recorded_considerations = params.fetch("query_recorded_considerations")
    the_limitedsarasotum.instrument_numbers = params.fetch("query_instrument_numbers")
    the_limitedsarasotum.qualification_codes = params.fetch("query_qualification_codes")
    the_limitedsarasotum.sellers = params.fetch("query_sellers")
    the_limitedsarasotum.instrument_types = params.fetch("query_instrument_types")
    the_limitedsarasotum.taxes = params.fetch("query_taxes")

    if the_limitedsarasotum.valid?
      the_limitedsarasotum.save
      redirect_to("/limitedsarasota", { :notice => "Limitedsarasotum created successfully." })
    else
      redirect_to("/limitedsarasota", { :alert => the_limitedsarasotum.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_limitedsarasotum = Limitedsarasotum.where({ :id => the_id }).at(0)

    the_limitedsarasotum.address = params.fetch("query_address")
    the_limitedsarasotum.year_built = params.fetch("query_year_built")
    the_limitedsarasotum.land_area = params.fetch("query_land_area")
    the_limitedsarasotum.living_area = params.fetch("query_living_area")
    the_limitedsarasotum.ownership = params.fetch("query_ownership")
    the_limitedsarasotum.municipality = params.fetch("query_municipality")
    the_limitedsarasotum.subdivision = params.fetch("query_subdivision")
    the_limitedsarasotum.zoning = params.fetch("query_zoning")
    the_limitedsarasotum.total_living_units = params.fetch("query_total_living_units")
    the_limitedsarasotum.buildings = params.fetch("query_buildings")
    the_limitedsarasotum.beds = params.fetch("query_beds")
    the_limitedsarasotum.baths = params.fetch("query_baths")
    the_limitedsarasotum.half_baths = params.fetch("query_half_baths")
    the_limitedsarasotum.eff_year_built = params.fetch("query_eff_year_built")
    the_limitedsarasotum.gross_area = params.fetch("query_gross_area")
    the_limitedsarasotum.stories = params.fetch("query_stories")
    the_limitedsarasotum.values_years = params.fetch("query_values_years")
    the_limitedsarasotum.values_land = params.fetch("query_values_land")
    the_limitedsarasotum.values_building = params.fetch("query_values_building")
    the_limitedsarasotum.values_extra_features = params.fetch("query_values_extra_features")
    the_limitedsarasotum.values_just = params.fetch("query_values_just")
    the_limitedsarasotum.values_assessed = params.fetch("query_values_assessed")
    the_limitedsarasotum.values_exemptions = params.fetch("query_values_exemptions")
    the_limitedsarasotum.values_taxable = params.fetch("query_values_taxable")
    the_limitedsarasotum.values_cap = params.fetch("query_values_cap")
    the_limitedsarasotum.transfer_dates = params.fetch("query_transfer_dates")
    the_limitedsarasotum.recorded_considerations = params.fetch("query_recorded_considerations")
    the_limitedsarasotum.instrument_numbers = params.fetch("query_instrument_numbers")
    the_limitedsarasotum.qualification_codes = params.fetch("query_qualification_codes")
    the_limitedsarasotum.sellers = params.fetch("query_sellers")
    the_limitedsarasotum.instrument_types = params.fetch("query_instrument_types")
    the_limitedsarasotum.taxes = params.fetch("query_taxes")

    if the_limitedsarasotum.valid?
      the_limitedsarasotum.save
      redirect_to("/limitedsarasota/#{the_limitedsarasotum.id}", { :notice => "Limitedsarasotum updated successfully."} )
    else
      redirect_to("/limitedsarasota/#{the_limitedsarasotum.id}", { :alert => the_limitedsarasotum.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_limitedsarasotum = Limitedsarasotum.where({ :id => the_id }).at(0)

    the_limitedsarasotum.destroy

    redirect_to("/limitedsarasota", { :notice => "Limitedsarasotum deleted successfully."} )
  end
end
