class ChangeActiveValuesOfNil < ActiveRecord::Migration
  def change
    # For organizations with nil values in the `active` column, make them `false`
    Organization.where('active is NULL').update_all(active: false)

  end
end
