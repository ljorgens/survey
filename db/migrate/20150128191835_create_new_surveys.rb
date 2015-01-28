class CreateNewSurveys < ActiveRecord::Migration
  def change
    create_table(:new_surveys) do |t|
      t.column(:name, :string)

      t.timestamps
    end
  end
end
