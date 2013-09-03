class ProcedureBuilder
  @@defaults = {
    :beginning_age    => 0,
    :ending_age       => 999,
    :slope            => 1,
    :exponent         => 1,
    :vertical_offset  => 0,
    :male_risk        => 1,
    :female_risk      => 1,
    :pregnancy        => 1,
    :obesity          => 1,
  }

  attr_reader :params, :procedure

  def initialize(params = {})
    @params     = @@defaults.merge(params)
    @procedure  = Procedure.new @params
  end

  def save
    @procedure.save
  end
end
