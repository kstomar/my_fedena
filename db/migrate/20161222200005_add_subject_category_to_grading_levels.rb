class AddSubjectCategoryToGradingLevels < ActiveRecord::Migration
  def self.up
    add_column :grading_levels, :subject_category_id, :integer
  end
end
