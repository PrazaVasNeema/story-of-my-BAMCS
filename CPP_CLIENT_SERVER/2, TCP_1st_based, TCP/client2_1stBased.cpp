#include <iostream>

#include <string>

#include <list>
#include <winsock2.h> 
#define _WINSOCK_DEPRECATED_NO_WARNINGS  
#pragma comment (lib, "Ws2_32.lib")  
#pragma warning(disable: 4996)  // ?????????? ?????????????? 4996 
using namespace std;
#define SRV_HOST "localhost"  
#define SRV_PORT 1234 
#define CLNT_PORT 1235  
#define BUF_SIZE 64  
#define IP_ADDR "26.54.97.93"

struct student
{
	string name;
	int group;
	int passed_tests;
	int initiative;
	int skipped_classes;
	int conclusion;
};
student create_student()
{
	student st;
	cout << "name: ";
	cin >> st.name;
	cout << "group: ";
	cin >> st.group;
	cout << "tests passed: ";
	cin >> st.passed_tests;
	cout << "times answered: ";
	cin >> st.initiative;
	cout << "classes skipped: ";
	cin >> st.skipped_classes;
	return st;
}
void print(student st)
{
	cout << "\nStudent's name: " << st.name << endl;
	cout << "Student's group: " << st.group << endl;
	cout << "tests passed(4 max): " << st.passed_tests << endl;
	cout << "times answered: " << st.initiative << endl;
	cout << "classes skipped: " << st.skipped_classes << endl;
	cout << "conclusion: ";
	switch (st.conclusion) {
	case true:
		cout << "zachet\n";
		break;
	case false:
		cout << "nezachet\n";
		break;
	}
}
void send_and_save(student st, list<student>& sts, list<student>::iterator& it, SOCKET s, int from_len) {
	char buf[BUF_SIZE] = { 0 };

	from_len = recv(s, (char*)&buf, BUF_SIZE, 0);
	buf[from_len] = 0;
	cout << buf << endl;

	st = create_student();

	send(s, (char*)&st, sizeof(st), 0);
	/*
	send(s, (char*)&st.passed_tests, sizeof(st.passed_tests), 0);
	send(s, (char*)&st.initiative, sizeof(st.initiative), 0);
	int dunn = -st.skipped_classes;
	send(s, (char*)&dunn, sizeof(dunn), 0);
	*/



	system("pause");

	recv(s, (char*)&st.conclusion, sizeof(st.conclusion), 0);
	sts.insert(it, st);
}
int main()
{
	char buff[1024];
	if (WSAStartup(0x0202, (WSADATA*)&buff[0]))
	{
		cout << "Error WSAStartup \n" << WSAGetLastError();   // ??????!
		return -1;
	}
	SOCKET s;
	int from_len;   char buf[BUF_SIZE] = { 0 };    hostent* hp;
	sockaddr_in srv_sin;
	s = socket(AF_INET, SOCK_STREAM, 0);
	
	hp = gethostbyname(SRV_HOST);
	srv_sin.sin_port = htons(SRV_PORT);
	srv_sin.sin_family = AF_INET;
//	srv_sin.sin_addr.s_addr = inet_addr(IP_ADDR);
	srv_sin.sin_addr.s_addr = *((unsigned long*)hp->h_addr);

	
	connect(s, (sockaddr*)&srv_sin, sizeof(srv_sin));

	string mst;
/*	ofstream file_out;
	ifstream file_in;
	int current_position = 0;
	*/
	list<student> sts;
	list<student>::iterator it = sts.begin();
	/*string client_name;
	cout << "enter the client's name: ";
	cin >> client_name;
	cout << endl;
	*/
	from_len = recv(s, (char*)&buf, BUF_SIZE, 0);
	buf[from_len] = 0;
	cout << buf << endl;
	while (1)
	{
		cout << "1-terminate the program 2-continue 3-result history\n";
		int check; cin >> check;
		student st;
		send(s, (char*)&check, sizeof(check) , 0);
		if (check == 1) break;
		switch (check) {
		case 2:
			send_and_save(st, sts, it, s, from_len);
			break;
		case 3:
			for (const student& x : sts) {
				print(x);
			}
		}
		std::cout << std::endl;
	}
	cout << "exit to infinity" << endl;
	cin.get(); closesocket(s);
	return 0;
}