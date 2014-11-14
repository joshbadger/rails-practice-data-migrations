class DeleteOldUsers < ActiveRecord::Migration
  def change
    Person.where('date_of_birth < ?', 100.years.ago ).delete_all
  end
end
