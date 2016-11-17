class CreateSubjectCategories< ActiveRecord::Migration
  def self.up
    create_table :subject_categories do |t|
      t.string      :name
      t.timestamps
    end
  end
end