class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :personal_funds
      t.string :ira_funds
      t.string :business_funds
      t.string :liquid_funds
      t.string :length_terms
      t.string :payments

      t.timestamps
    end
  end
end
