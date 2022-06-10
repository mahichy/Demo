class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :project_type
      t.string :customer_contact_person
      t.decimal :dues_so_far
      t.text :potential_next_jobs_from_this_client
      t.text :notes

      t.timestamps
    end
  end
end
