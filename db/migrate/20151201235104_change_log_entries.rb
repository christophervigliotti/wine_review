class ChangeLogEntries < ActiveRecord::Migration
  def change
    change_table :log_entries do |t|
      t.change :comments, :text
    end
  end
end
