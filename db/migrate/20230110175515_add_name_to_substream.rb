class AddNameToSubstream < ActiveRecord::Migration[7.0]
  def change
    add_column :substreams, :name , :string
  end
end
