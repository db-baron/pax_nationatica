class AddSummaryIcaRiseFallAchievementsToNations < ActiveRecord::Migration
  def change
    add_column :nations, :summary, :text
    add_column :nations, :ica, :string
    add_column :nations, :rise, :text
    add_column :nations, :fall, :text
    add_column :nations, :achievements, :text
  end
end
