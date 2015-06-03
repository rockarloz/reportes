class AddJournalistIdToHistories < ActiveRecord::Migration
  def change
    add_reference :histories, :journalist, index: true, foreign_key: true
  end
end
