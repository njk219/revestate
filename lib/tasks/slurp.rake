namespace :slurp do
  desc "TODO"
  task limitedsarasota: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "limitedsarasota.csv"))  
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Limitedsarasotum.new
      t.address = row["address"]
      t.year_built = row["year_built"]
      t.land_area = row["land_area"]
      t.living_area = row["living_area"]
      t.ownership = row["ownership"]
      t.municipality = row["municipality"]
      t.subdivision = row["subdivision"]
      t.property_use = row["property_use"]
      t.zoning = row["zoning"]
      t.total_living_units = row["total_living_units"]
      t.buildings = row["buildings"]
      t.beds = row["beds"]
      t.baths = row["baths"]
      t.half_baths = row["half_baths"]
      t.eff_year_built = row["eff_year_built"]
      t.gross_area = row["gross_area"]
      t.stories = row["stories"]
      t.values_years = row["values_years"]
      t.values_land = row["values_land"]
      t.values_building = row["values_building"]
      t.values_extra_feature = row["values_extra_feature"]
      t.values_just = row["values_just"]
      t.values_assessed = row["values_assessed"]
      t.values_exemptions = row["values_exemptions"]
      t.values_taxable = row["values_taxable"]
      t.values_cap = row["values_cap"]
      t.transfer_dates = row["transfer_dates"]
      t.recorded_considerations = row["recorded_considerations"]
      t.instrument_numbers = row["instrument_numbers"]
      t.qualification_codes = row["qualification_codes"]
      t.sellers = row["sellers"]
      t.instrument_types = row["instrument_types"]
      t.taxes = row["taxes"]
      t.save
      puts "#{t.address} saved"
    end

    puts "There are now #{Limitedsarasotum.count} rows in the transactions table"
  end

end
