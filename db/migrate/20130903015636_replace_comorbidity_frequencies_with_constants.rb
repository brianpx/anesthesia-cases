class ReplaceComorbidityFrequenciesWithConstants < ActiveRecord::Migration
  def change
    remove_column :comorbidities, :freq_in_10s, :integer
    remove_column :comorbidities, :freq_in_20s, :integer
    remove_column :comorbidities, :freq_in_30s, :integer
    remove_column :comorbidities, :freq_in_40s, :integer
    remove_column :comorbidities, :freq_in_50s, :integer
    remove_column :comorbidities, :freq_in_60s, :integer
    remove_column :comorbidities, :freq_in_70s, :integer
    remove_column :comorbidities, :freq_in_80s, :integer
    remove_column :comorbidities, :freq_in_90s, :integer

    add_column :comorbidities, :slope,          :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :exponent,       :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :male_risk,      :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :female_risk,    :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :smoking,        :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :diabetes,       :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :hypertension,   :decimal, :precision => 10, :scale => 2
    add_column :comorbidities, :hyperlipidemia, :decimal, :precision => 10, :scale => 2
  end
end
