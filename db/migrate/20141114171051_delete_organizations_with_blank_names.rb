class DeleteOrganizationsWithBlankNames < ActiveRecord::Migration
  def change
    Organization.all.each do |org|
      if org.name != nil
        org.name = org.name.strip
        org.save
      end
    end

    Organization.where('name = ? OR name is NULL', '').delete_all
  end
end
