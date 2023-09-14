#include <iostream>  
#include <winsock2.h> 
#include <windows.h> 
#include <string> 

#pragma comment (lib, "Ws2_32.lib")  

using namespace std;
#define SRV_PORT 1234  
#define BUF_SIZE 64
struct student
{
    string name;
    int group;
    int passed_tests;
    int initiative;
    int skipped_classes;
    int conclusion;
};
const string QUEST = "Who are you?\n";
int main()
{
    student st;
    string str;
    cout << sizeof(str);
    
    char buff[1024];
    if (WSAStartup(0x0202, (WSADATA*)&buff[0]))
    {
        cout << "Error WSAStartup \n" << WSAGetLastError();   // ??????!
        return -1;
    }
    SOCKET s, s_new;
    int from_len;
    char buf[BUF_SIZE] = { 0 };
    sockaddr_in sin, from_sin;
    s = socket(AF_INET, SOCK_STREAM, 0);
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = 0;
    sin.sin_port = htons(SRV_PORT);
    bind(s, (sockaddr*)&sin, sizeof(sin));
    string msg;
    listen(s, 3);
    
    int mark;
 /*   fstream::pos_type size = 0;
    ifstream file_in;
    ofstream file_out;
    string current_client;
    */
    
    string QUEST2 = "Please enter the data\n"; string QUEST1 = "Hello there, fella client!\n";

    int amount_of, general;

        while (1)
        {
            string msg;
            int check;
            from_len = sizeof(from_sin);
            s_new = accept(s, (sockaddr*)&from_sin, &from_len);
            cout << "new connected client! " << endl;
            msg = QUEST1;
            send(s_new, (char*)&msg[0], msg.size(), 0);

            

            general = 0;
            msg = QUEST2;
            while (1) {
                recv(s_new, (char*)&check, sizeof(check), 0);


                cout << check << endl;
                if (check == 1) break;
                if (check == 3) continue;
                send(s_new, (char*)&msg[0], msg.size(), 0);
                recv(s_new, (char*)&st, sizeof(st), 0);
                /*for (int i = 0, multiplier = 50; i < 3; i++, multiplier /= 5) {
                    from_len = recv(s_new, (char*)&amount_of, sizeof(amount_of), 0);


                    general += amount_of * multiplier;
                }
                */
                general = st.passed_tests * 50 + st.initiative * 10 + st.skipped_classes * 2;
                st.conclusion = (general > 200 ? 1 : 0);
                cout << general << endl;
                cout << st.conclusion << endl;
                send(s_new, (char*)&st.conclusion, sizeof(st.conclusion), 0);

               
            }
                cout << "client is lost";
                closesocket(s_new);
            
        }
        return 0;
}