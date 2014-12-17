class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :name
      t.string :version
      t.text :short
      t.text :explanation
      t.text :full
      t.datetime :activates_at
      t.datetime :expires_at

      t.timestamps
    end
    add_index :agreements, :name
  end
end