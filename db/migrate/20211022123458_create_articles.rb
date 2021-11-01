class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references :user,  null: false, foreign_key: true 
      t.string :title,     null: false
      t.integer :genre_id, null: false, limit: 1
      t.text :text,        null: false
      t.integer :arc1_id,   limit: 1, null: false
      t.integer :arc2_id,   limit: 1, null: false
      t.integer :arc3_id,   limit: 1, null: false
      t.integer :arc4_id,   limit: 1, null: false
      t.integer :arc5_id,   limit: 1, null: false
      t.integer :arc6_id,   limit: 1, null: false
      t.integer :arc7_id,   limit: 1, null: false
      t.integer :arc8_id,   limit: 1, null: false
      t.integer :arc9_id,   limit: 1, null: false
      t.integer :arc10_id,  limit: 1, null: false
      t.integer :arc11_id,  limit: 1, null: false
      t.integer :arc12_id,  limit: 1, null: false
      t.integer :arc13_id,  limit: 1, null: false
      t.integer :arc14_id,  limit: 1, null: false
      t.integer :arc15_id,  limit: 1, null: false
      t.integer :arc16_id,  limit: 1, null: false
      t.integer :arc17_id,  limit: 1, null: false
      t.integer :arc18_id,  limit: 1, null: false
      t.integer :arc19_id,  limit: 1, null: false
      t.integer :arc20_id,  limit: 1, null: false
      t.integer :mons1_id,  limit: 1, null: false
      t.integer :mons2_id,  limit: 1, null: false
      t.integer :mons3_id,  limit: 1, null: false
      t.integer :mons4_id,  limit: 1, null: false
      t.integer :mons5_id,  limit: 1, null: false
      t.integer :mons6_id,  limit: 1, null: false
      t.integer :mons7_id,  limit: 1, null: false
      t.integer :mons8_id,  limit: 1, null: false
      t.integer :mons9_id,  limit: 1, null: false
      t.integer :mons10_id, limit: 1, null: false
      t.integer :mons11_id, limit: 1, null: false
      t.integer :mons12_id, limit: 1, null: false
      t.integer :mons13_id, limit: 1, null: false
      t.integer :mons14_id, limit: 1, null: false
      t.integer :mons15_id, limit: 1, null: false
      t.integer :mons16_id, limit: 1, null: false
      t.integer :mons17_id, limit: 1, null: false
      t.integer :mons18_id, limit: 1, null: false
      t.integer :mons19_id, limit: 1, null: false
      t.integer :mons20_id, limit: 1, null: false
      t.timestamps
    end
  end
end