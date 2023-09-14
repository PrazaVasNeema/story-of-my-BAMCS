#include <iostream>
#include <fstream>
#include <string>
#include <unordered_set>
#include <list>
using namespace std;
struct student
{
	string name;
	int group;
	int passed_tests;
	int initiative;
	int skipped_classes;
	bool conclusion;
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
void send_and_save(ofstream& file_out, ifstream& file_in, student st, list<student>& sts, list<student>::iterator& it, int& current_position, string client_name) {
	st = create_student();
	file_out.open("C://Users//Kayab//Desktop//Computer science//client-server//f.bin", ios::app, ios::binary);
	file_out.write((char*)&client_name, sizeof(client_name));
	file_out.write((char*)&st.passed_tests, sizeof(st.passed_tests));
	file_out.write((char*)&st.initiative, sizeof(st.initiative));
	file_out.write((char*)&st.initiative, sizeof(st.initiative));
	int dunn = -st.skipped_classes;
	file_out.write((char*)&dunn, sizeof(dunn));
	file_out.close();
	system("pause");
	file_in.open("C://Users//Kayab//Desktop//Computer science//client-server//" + client_name + ".bin");
	file_in.seekg(+current_position, ios::beg);
	file_in.read((char*)&st.conclusion, 1);
	file_in.seekg(0, ios::end);
	current_position = file_in.tellg();
	file_in.close();
	sts.insert(it, st);
}
void main()
{
	ofstream file_out;
	ifstream file_in;
	int current_position = 0;
	list<student> sts;
	list<student>::iterator it = sts.begin();
	string client_name;
	cout << "enter the client's name: ";
	cin >> client_name;
	cout << endl;
	while (1)
	{
		cout << "1-terminate the program 2-continue 3-result history\n";
		int check; cin >> check;
		student st;
		if (check == 1) break;
		switch (check) {
		case 2:
			send_and_save(file_out, file_in, st, sts, it, current_position, client_name);
			break;
		case 3:
			for (const student& x : sts) {
				print(x);
			}
		}
		std::cout << std::endl;
	}
	file_out.open("C://Users//Kayab//Desktop//Computer science//client-server//" + client_name + ".bin", ios::trunc);
}