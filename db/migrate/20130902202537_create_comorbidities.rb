class CreateComorbidities < ActiveRecord::Migration
  def change
    create_table :comorbidities do |t|
      t.string :name
      t.boolean :male
      t.boolean :female
      t.integer :freq_in_10s
      t.integer :freq_in_20s
      t.integer :freq_in_30s
      t.integer :freq_in_40s
      t.integer :freq_in_50s
      t.integer :freq_in_60s
      t.integer :freq_in_70s
      t.integer :freq_in_80s
      t.integer :freq_in_90s

      t.timestamps
    end
  end
end
