class RemoveGenderColumnsFromComorbidity < ActiveRecord::Migration
  def change
    remove_column :comorbidities, :male
    remove_column :comorbidities, :female
  end
end
