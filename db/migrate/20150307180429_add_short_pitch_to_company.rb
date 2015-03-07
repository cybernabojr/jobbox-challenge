class AddShortPitchToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :short_pitch, :string
  end
end
