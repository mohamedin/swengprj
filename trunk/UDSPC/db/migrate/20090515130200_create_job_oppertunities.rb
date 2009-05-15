class CreateJobOppertunities < ActiveRecord::Migration
  def self.up
    create_table :job_oppertunities do |t|
      t.string :JobTitle
      t.integer :Salary
      t.string :Department
      t.text :Description
      t.text :Prequisites

      t.timestamps
    end
  end

  def self.down
    drop_table :job_oppertunities
  end
end
