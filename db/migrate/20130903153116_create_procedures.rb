class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string  :name
      t.decimal :beginning_age,   :precision => 10, :scale => 2
      t.decimal :ending_age,      :precision => 10, :scale => 2
      t.decimal :slope,           :precision => 10, :scale => 2
      t.decimal :exponent,        :precision => 10, :scale => 2
      t.decimal :vertical_offset, :precision => 10, :scale => 2
      t.decimal :male_risk,       :precision => 10, :scale => 2
      t.decimal :female_risk,     :precision => 10, :scale => 2
      t.decimal :pregnancy,       :precision => 10, :scale => 2
      t.decimal :obesity,         :precision => 10, :scale => 2
      t.timestamps
    end
  end
end
