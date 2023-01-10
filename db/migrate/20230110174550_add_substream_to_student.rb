class AddSubstreamToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :substream_id, :integer
  end
end
