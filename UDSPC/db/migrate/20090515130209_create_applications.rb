class CreateApplications < ActiveRecord::Migration
  def self.up
    create_table :applications do |t|
      t.integer :applicant_id
      t.integer :job_oppertunity_id
      t.timestamp :SendingDate

      t.timestamps
    end
  end

  def self.down
    drop_table :applications
  end
end
