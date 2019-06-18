# Net_Termianl
## Processing で通信するプログラムを作る
* 通信するプログラムを作るときには `net` ライブラリを使用する。 

メニューから `Sketch > Import Library > net` を選択すると、  
`import processing.net.*;`  という１行がプログラムに挿入されますのでこれで準備完了。  
  
## プログラム
* 実行するときは `Server` を実行してから、その後 `Client` を実行する。  
'注意':`println` の内容は1つのウィンドウにまとめて表示される
### 複数の Client で接続する
* 方法: `File > Export applicaDon` を利用する
### 他のコンピュータに接続しする
* 方法: `“127.0.0.1”` の部分を接続したいコンピュータのIPアドレスに変更してから実行する
