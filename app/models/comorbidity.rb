# == Schema Information
#
# Table name: comorbidities
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  male           :boolean
#  female         :boolean
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
end
