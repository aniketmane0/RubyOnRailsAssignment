class AddLeaderIdToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :leader, foreign_key: true
  end
end
