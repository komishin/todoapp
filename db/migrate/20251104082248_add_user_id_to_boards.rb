class AddUserIdToBoards < ActiveRecord::Migration[8.1]
  def change
    add_reference :boards, :user
  end
end
