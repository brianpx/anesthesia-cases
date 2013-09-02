json.array!(@comorbidities) do |comorbidity|
  json.extract! comorbidity, :name, :male, :female, :freq_in_10s, :freq_in_20s, :freq_in_30s, :freq_in_40s, :freq_in_50s, :freq_in_60s, :freq_in_70s, :freq_in_80s, :freq_in_90s
  json.url comorbidity_url(comorbidity, format: :json)
end
