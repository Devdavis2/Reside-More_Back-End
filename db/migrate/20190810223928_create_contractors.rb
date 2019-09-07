class CreateContractors < ActiveRecord::Migration[5.2]
  def change
    create_table :contractors do |t|
      t.string :company
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :specilization
      t.string :contractor_license_number
      t.string :insurance
      t.string :insurance_type
      t.string :coverage
      t.string :experience
      t.string :management_experience
      t.string :employees
      t.string :projects
      t.string :past_projects
      t.string :job_capacity
      t.string :recent_jobs
      t.string :sow
      t.string :job_address
      t.string :job_bid
      t.string :materials_labor
      t.string :warranties
      t.string :warranties_length
      t.string :sub_contractor
      t.string :licensed_insured
      t.string :electrician
      t.string :plumber
      t.string :certificates_licenses
      t.string :bbb_coc
      t.string :bankruptcy
      t.string :communication
      t.string :clean
      t.string :lien_waiver
      t.string :references
      t.string :lead_source

      t.timestamps
    end
  end
end
