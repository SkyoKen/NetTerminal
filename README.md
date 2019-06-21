# 通信プログラム
1. Net ([processig](https://github.com/SkyoKen/Net_Termianl/tree/master/Net))
2. UDP ([processing](https://github.com/SkyoKen/Net_Termianl/tree/master/UDP/Processing),[C#](https://github.com/SkyoKen/Net_Termianl/tree/master/UDP/C#))

## 1. Net
* 通信するプログラムを作るときには `net` ライブラリを使用する。 

メニューから `Sketch > Import Library > net` を選択すると、  
`import processing.net.*;`  という１行がプログラムに挿入されますのでこれで準備完了。  
  
#### プログラム
* 実行するときは `Server` を実行してから、その後 `Client` を実行する。  
注意:`println` の内容は1つのウィンドウにまとめて表示される
##### 複数の Client で接続する
* 方法: `File > Export applicaDon` を利用する
##### 他のコンピュータに接続しする
* 方法: `“127.0.0.1”` の部分を接続したいコンピュータのIPアドレスに変更してから実行する

#### 参考資料
[[1] Processing で通信するプログラムを作る （参照日 2019.06.18）](http://www2.kobe-u.ac.jp/~tnishida/misc/processing-net.html)

## 2. UDP
* `Processing->processing`,`Processing->C#`,`C#->processing`,`C#->C#`で通信できる。
#### 参考資料
[[1] C#のWinアプリからProcessingにUDP通信する（指導用） （参照日 2019.06.21）](https://memorandums.hatenablog.com/entry/2016/11/08/203610)  
[[2] 【Processing】UDPの送受信 （参照日 2019.06.21）](https://qiita.com/GoshikiNiji/items/b716ed113b83856f5231)
