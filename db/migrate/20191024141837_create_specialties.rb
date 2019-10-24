class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :name
      t.belongs_to :specialty, index:true
     
      t.timestamps
    end
  end
end
