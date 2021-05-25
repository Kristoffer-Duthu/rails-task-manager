class AddDefaultValueToCompleted < ActiveRecord::Migration[6.1]
  def change
    change_column :profiles, :show_attribute, :boolean, default: false
  end
end
