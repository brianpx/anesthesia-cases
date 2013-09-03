# == Schema Information
#
# Table name: comorbidities
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  slope          :decimal(10, 2)
#  exponent       :decimal(10, 2)
#  male_risk      :decimal(10, 2)
#  female_risk    :decimal(10, 2)
#  smoking        :decimal(10, 2)
#  diabetes       :decimal(10, 2)
#  hypertension   :decimal(10, 2)
#  hyperlipidemia :decimal(10, 2)
#

class Comorbidity < ActiveRecord::Base
  validates :name, :format => { :with => /\A[[:print:][:space:]]{1,100}\Z/ }

  %w(beginning_age slope exponent vertical_offset male_risk female_risk smoking diabetes hypertension hyperlipidemia).each do |column|
    validates column, :numericality => {
      :greater_than_or_equal_to => 0,
      :less_than_or_equal_to    => 100,
    }
  end
end
