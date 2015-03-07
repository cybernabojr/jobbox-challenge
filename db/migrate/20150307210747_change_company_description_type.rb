class ChangeCompanyDescriptionType < ActiveRecord::Migration
  def up
    remove_column :companies, :description
    add_column :companies, :description, :text
  end

  def down
    remove_column :companies, :description
  end
end
