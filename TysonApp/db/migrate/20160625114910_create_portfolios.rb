class CreatePortfolios < ActiveRecord::Migration
  #enum game: %i(pazugura youkaimap)
  def change
    create_table :portfolios do |t|
      t.integer :gameid
      t.string :gamename
      t.string :to
      t.string :url
      t.string :google
      #t.timestamps null: false
    end
  end
end
