class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.references :article, null: false, foreign_key: true
      t.integer :arc1,   limit: 1, null: false
      t.integer :arc2,   limit: 1, null: false
      t.integer :arc3,   limit: 1, null: false
      t.integer :arc4,   limit: 1, null: false
      t.integer :arc5,   limit: 1, null: false
      t.integer :arc6,   limit: 1, null: false
      t.integer :arc7,   limit: 1, null: false
      t.integer :arc8,   limit: 1, null: false
      t.integer :arc9,   limit: 1, null: false
      t.integer :arc10,  limit: 1, null: false
      t.integer :arc11,  limit: 1, null: false
      t.integer :arc12,  limit: 1, null: false
      t.integer :arc13,  limit: 1, null: false
      t.integer :arc14,  limit: 1, null: false
      t.integer :arc15,  limit: 1, null: false
      t.integer :arc16,  limit: 1, null: false
      t.integer :arc17,  limit: 1, null: false
      t.integer :arc18,  limit: 1, null: false
      t.integer :arc19,  limit: 1, null: false
      t.integer :arc20,  limit: 1, null: false
      t.integer :mons1,  limit: 1, null: false
      t.integer :mons2,  limit: 1, null: false
      t.integer :mons3,  limit: 1, null: false
      t.integer :mons4,  limit: 1, null: false
      t.integer :mons5,  limit: 1, null: false
      t.integer :mons6,  limit: 1, null: false
      t.integer :mons7,  limit: 1, null: false
      t.integer :mons8,  limit: 1, null: false
      t.integer :mons9,  limit: 1, null: false
      t.integer :mons10, limit: 1, null: false
      t.integer :mons11, limit: 1, null: false
      t.integer :mons12, limit: 1, null: false
      t.integer :mons13, limit: 1, null: false
      t.integer :mons14, limit: 1, null: false
      t.integer :mons15, limit: 1, null: false
      t.integer :mons16, limit: 1, null: false
      t.integer :mons17, limit: 1, null: false
      t.integer :mons18, limit: 1, null: false
      t.integer :mons19, limit: 1, null: false
      t.integer :mons20, limit: 1, null: false
      t.timestamps
    end
  end
end