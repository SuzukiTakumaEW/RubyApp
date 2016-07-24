# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Title.create(:name => '宇宙に行った日', :sales_date => '2011-06-28')
Title.create(:name => '観察日記', :sales_date => '2011-11-14')
Portfolio.create(:gameid => 1, :gamename => 'PazuGura', :to => 'pazu',:url =>'https://github.com/KOGAKUINteam4/PazuGura/tree/develop',:google => 'https://play.google.com/store/apps/details?id=com.Company.PazuGra&hl=ja')
Portfolio.create(:gameid => 2, :gamename => '溶解Map', :to => 'map',:url =>'https://github.com/SuzukiTakumaEWTGS/TGS_01/tree/develop',:google => 'https://play.google.com/store/search?q=鈴木拓馬&hl=ja')