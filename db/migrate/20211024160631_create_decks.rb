class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.references :article, null: false, foreign_key: true
      t.integer :arc1,   null: false
      t.integer :arc2,   null: false
      t.integer :arc3,   null: false
      t.integer :arc4,   null: false
      t.integer :arc5,   null: false
      t.integer :arc6,   null: false
      t.integer :arc7,   null: false
      t.integer :arc8,   null: false
      t.integer :arc9,   null: false
      t.integer :arc10,  null: false
      t.integer :arc11,  null: false
      t.integer :arc12,  null: false
      t.integer :arc13,  null: false
      t.integer :arc14,  null: false
      t.integer :arc15,  null: false
      t.integer :arc16,  null: false
      t.integer :arc17,  null: false
      t.integer :arc18,  null: false
      t.integer :arc19,  null: false
      t.integer :arc20,  null: false
      t.integer :mons1,  null: false
      t.integer :mons2,  null: false
      t.integer :mons3,  null: false
      t.integer :mons4,  null: false
      t.integer :mons5,  null: false
      t.integer :mons6,  null: false
      t.integer :mons7,  null: false
      t.integer :mons8,  null: false
      t.integer :mons9,  null: false
      t.integer :mons10, null: false
      t.integer :mons11, null: false
      t.integer :mons12, null: false
      t.integer :mons13, null: false
      t.integer :mons14, null: false
      t.integer :mons15, null: false
      t.integer :mons16, null: false
      t.integer :mons17, null: false
      t.integer :mons18, null: false
      t.integer :mons19, null: false
      t.integer :mons20, null: false
      t.timestamps
    end
  end
end