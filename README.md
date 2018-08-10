
# g_team
名前 : 水上貴晶（みずかみたかまさ）
大学 : 愛知工業大学大学院
出身地 : 愛知県名古屋市
得意な技術 : RailsでWEBアプリを作成する事。最近はFlutterでqiitaのクライアントアプリケーションの開発をしています。
3日間の意気込み : 元気よく、楽しくインターン3日間過ごしましょう。

名前 :野口勇気
大学 : 筑波大学大学院
出身地 : 佐賀
得意な技術 : 深層学習
3日間の意気込み : やるからには最高のものを！！
この3日間で学びたい事 : チーム開発の円滑な進めたかなどを身につけていきたいです。

# Usage
1.  `docker-machine create --driver virtualbox rails52`
    (1). `docker-machine start rails52`
2.  `eval $(docker-machine env rails52)`
3.  `docker-compose up --build -d`
4.  `docker-machine ssh rails52 -L 8080:localhost:9000`
5.  `docker exec -it rails_template_web_1 bash`
6.  `rails db:create`