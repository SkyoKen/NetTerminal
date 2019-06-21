using System;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace udpReceive
{
    class Program
    {
        static void Main(string[] args)
        {
            IPAddress localAddress = IPAddress.Any;
            int localPort = 53131;

            UdpClient udp = new UdpClient(new IPEndPoint(localAddress, localPort));
            IPEndPoint remoteEP = null;
            for (; ; )
            {
                //データを受信する
                byte[] rcvBytes = udp.Receive(ref remoteEP);

                //データを文字列に変換する
                string rcvMsg = Encoding.UTF8.GetString(rcvBytes);

                //受信したデータと送信者の情報を表示する
                Console.WriteLine("受信したデータ:{0}", rcvMsg);
                Console.WriteLine("送信元アドレス:{0}/ポート番号:{1}", remoteEP.Address, remoteEP.Port);
                if (rcvMsg == "99") break;

            }

            //UdpClientを閉じる
            udp.Close();
        }
    }
}
