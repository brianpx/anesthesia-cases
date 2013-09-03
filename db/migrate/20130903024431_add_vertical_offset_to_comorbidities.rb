class AddVerticalOffsetToComorbidities < ActiveRecord::Migration
  def change
    add_column :comorbidities, :vertical_offset, :decimal, :precision => 10, :scale => 2
  end
end
