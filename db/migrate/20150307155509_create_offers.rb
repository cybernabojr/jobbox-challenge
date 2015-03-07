class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :city
      t.integer :company_id
      t.string :country_code
      t.string :country_name
      t.string :currency_code
      t.date :expires_at
      t.text :nice_to_have
      t.text :perks
      t.datetime :published_at
      t.integer :reward
      t.boolean :remote
      t.boolean :relocation_paid
      t.text :role_description
      t.integer :salary_low
      t.integer :salary_high
      t.boolean :successful?
      t.string :title
      t.boolean :work_from_home
      t.string :type
      t.string :tags, array: true, default: []

      t.timestamps
    end
  end
end
