class AddBeginningAgeToComorbidities < ActiveRecord::Migration
  def change
    add_column :comorbidities, :beginning_age, :decimal, :precision => 10, :scale => 2
  end
end
