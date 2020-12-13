class CreateEndOfDays < ActiveRecord::Migration[6.1]
  def change
    create_table :end_of_days do |t|
      t.integer :user_id
      t.decimal :hours_in_meetings
      t.decimal :hours_on_expected_tasks
      t.decimal :hours_on_unexpected_tasks
      t.text :got_done
      t.text :to_do
      t.text :concerns
      t.text :learned
      t.datetime :published

      t.timestamps
    end
  end
end
