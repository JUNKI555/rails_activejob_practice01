class CreateJobStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :job_statuses do |t|
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
