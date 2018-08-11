
# g_team
名前 : 水上貴晶（みずかみたかまさ）
大学 : 愛知工業大学大学院
出身地 : 愛知県名古屋市
得意な技術 : RailsでWEBアプリを作成する事。最近はFlutterでqiitaのクライアントアプリケーションの開発をしています。
3日間の意気込み : 元気よく、楽しくインターン3日間過ごしましょう。

# Usage
1.  `docker-compose up --build -d`
2.  `docker-machine ssh rails52 -L 8080:localhost:9000`
3.  `docker-compose run web rails db:create`

## 色々
+ `bundle install --path vendor/bundler`
+ `eval $(docker-machine env rails52)`
+ `docker-compose run web bundle install --path vender/bundler`
