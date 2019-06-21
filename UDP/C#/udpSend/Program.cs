using System;

public class UdpSender
{
    static void Main()
    {
        //データを送信するリモートホストとポート番号
        string remoteHost = "255.255.255.255";
        int remotePort = 53131;

        //UdpClientオブジェクトを作成する
        System.Net.Sockets.UdpClient udp =
            new System.Net.Sockets.UdpClient();

        for (; ; )
        {
            //送信するデータを作成する
            Console.WriteLine("送信する文字列を入力してください。");
            string sendMsg = Console.ReadLine();
            byte[] sendBytes = System.Text.Encoding.UTF8.GetBytes(sendMsg);

            //リモートホストを指定してデータを送信する
            udp.Send(sendBytes, sendBytes.Length, remoteHost, remotePort);

            //または、
            //udp = new UdpClient(remoteHost, remotePort);
            //として、
            //udp.Send(sendBytes, sendBytes.Length);

            //"exit"と入力されたら終了
            if (sendMsg.Equals("exit"))
            {
                break;
            }
        }

        //UdpClientを閉じる
        udp.Close();

        Console.WriteLine("終了しました。");
        Console.ReadLine();
    }
}