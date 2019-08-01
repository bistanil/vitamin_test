class CreateVitaminStores < ActiveRecord::Migration[5.2]
  def change
    create_table :vitamin_stores do |t|
      t.string :day
      t.string :vita_c
      t.string :vita_d3
      t.string :vita_iron
      t.string :acti_vita_c
      t.string :acti_vita_d3
      t.string :acti_vita_iron

      t.timestamps
    end
  end
end
