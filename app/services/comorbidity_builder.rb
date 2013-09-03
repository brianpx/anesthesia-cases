class ComorbidityBuilder
  @@defaults = {
    :beginning_age    => 0,
    :slope            => 1,
    :exponent         => 1,
    :vertical_offset  => 0,
    :male_risk        => 1,
    :female_risk      => 1,
    :smoking          => 1,
    :diabetes         => 1,
    :hypertension     => 1,
    :hyperlipidemia   => 1,
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
