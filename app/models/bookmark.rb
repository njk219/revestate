# == Schema Information
#
# Table name: bookmarks
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  limitedsarasota_id :integer
#  user_id            :integer
#
class Bookmark < ApplicationRecord
  belongs_to(:limitedsarasota, { :required => true, :class_name => "Limitedsarasotum", :foreign_key => "limitedsarasota_id" })
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
