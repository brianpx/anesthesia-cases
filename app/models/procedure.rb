# == Schema Information
#
# Table name: procedures
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  beginning_age   :decimal(10, 2)
#  ending_age      :decimal(10, 2)
#  slope           :decimal(10, 2)
#  exponent        :decimal(10, 2)
#  vertical_offset :decimal(10, 2)
#  male_risk       :decimal(10, 2)
#  female_risk     :decimal(10, 2)
#  pregnancy       :decimal(10, 2)
#  obesity         :decimal(10, 2)
#  created_at      :datetime
#  updated_at      :datetime
#

class Procedure < ActiveRecord::Base
  validates :name, :format => { :with => /\A[[:print:][:space:]]{1,100}\Z/ }

  %w(beginning_age slope exponent vertical_offset male_risk female_risk pregnancy obesity).each do |column|
    validates column, :numericality => {
      :greater_than_or_equal_to => 0,
      :less_than_or_equal_to    => 100,
    }
  end

  validates :ending_age, :numericality => {
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to    => 1000,
  }
end
