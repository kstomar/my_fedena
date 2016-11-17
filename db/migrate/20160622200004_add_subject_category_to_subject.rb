class AddSubjectCategoryToSubject < ActiveRecord::Migration
  def self.up
    add_column :subjects, :subject_category_id, :integer
  end
end
