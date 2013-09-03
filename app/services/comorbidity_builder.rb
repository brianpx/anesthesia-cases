class ComorbidityBuilder
  @@defaults = {
    :slope          => 1,
    :exponent       => 1,
    :male_risk      => 1,
    :female_risk    => 1,
    :smoking        => 1,
    :diabetes       => 1,
    :hypertension   => 1,
    :hyperlipidemia => 1,
  }

  attr_reader :params, :comorbidity

  def initialize(params = {})
    @params       = @@defaults.merge(params)
    @comorbidity  = Comorbidity.new @params
  end

  def save
    @comorbidity.save
  end
end
