# == Schema Information
#
# Table name: limitedsarasota
#
#  id                      :integer          not null, primary key
#  address                 :string
#  baths                   :integer
#  beds                    :integer
#  buildings               :integer
#  eff_year_built          :date
#  gross_area              :integer
#  half_baths              :integer
#  instrument_numbers      :string
#  instrument_types        :string
#  land_area               :integer
#  living_area             :integer
#  municipality            :string
#  ownership               :string
#  qualification_codes     :string
#  recorded_considerations :string
#  sellers                 :string
#  stories                 :integer
#  subdivision             :string
#  taxes                   :integer
#  total_living_units      :integer
#  transfer_dates          :string
#  values_assessed         :string
#  values_building         :string
#  values_cap              :string
#  values_exemptions       :string
#  values_extra_features   :string
#  values_just             :string
#  values_land             :string
#  values_taxable          :string
#  values_years            :string
#  year_built              :date
#  zoning                  :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
class Limitedsarasotum < ApplicationRecord
  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "limitedsarasota_id", :dependent => :destroy })
  has_many(:users, { :through => :bookmarks, :source => :user })
end
