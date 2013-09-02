# == Schema Information
#
# Table name: comorbidities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  male        :boolean
#  female      :boolean
#  freq_in_10s :integer
#  freq_in_20s :integer
#  freq_in_30s :integer
#  freq_in_40s :integer
#  freq_in_50s :integer
#  freq_in_60s :integer
#  freq_in_70s :integer
#  freq_in_80s :integer
#  freq_in_90s :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Comorbidity < ActiveRecord::Base
end
