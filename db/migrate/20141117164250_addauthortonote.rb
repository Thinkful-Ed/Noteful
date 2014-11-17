class Addauthortonote < ActiveRecord::Migration
  def change
    add_reference :notes, :author, index: true
  end
end
