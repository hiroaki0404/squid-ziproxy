squid-ziproxy
===
[Squid](http://www.squid-cache.org/ "Squid")と[Ziproxy](http://ziproxy.sourceforge.net/ "Ziproxy")を組み合わせた、圧縮Proxyです。スマホのproxyとして使うことを想定しています。

Build
-
docker build -t [name] .

Run
-
docker run -d -p 3128:3128 [name]

構成
-

Client -> Squid -> Ziproxy
として、圧縮した画像をcacheするようにしています。

その他
-
squid-fetch にpatchを当てて、画像ファイルの先読みを行うようにしましたが、効果のほどは不明です。