class CreateLimitedsarasota < ActiveRecord::Migration[6.0]
  def change
    create_table :limitedsarasota do |t|
      t.string :address
      t.date :year_built
      t.integer :land_area
      t.integer :living_area
      t.string :ownership
      t.string :municipality
      t.string :subdivision
      t.string :zoning
      t.integer :total_living_units
      t.integer :buildings
      t.integer :beds
      t.integer :baths
      t.integer :half_baths
      t.date :eff_year_built
      t.integer :gross_area
      t.integer :stories
      t.string :values_years
      t.string :values_land
      t.string :values_building
      t.string :values_extra_features
      t.string :values_just
      t.string :values_assessed
      t.string :values_exemptions
      t.string :values_taxable
      t.string :values_cap
      t.string :transfer_dates
      t.string :recorded_considerations
      t.string :instrument_numbers
      t.string :qualification_codes
      t.string :sellers
      t.string :instrument_types
      t.integer :taxes

      t.timestamps
    end
  end
end
