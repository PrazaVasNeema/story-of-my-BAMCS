/*#include <fstream>
#include <iostream>
using namespace std;
int main() {
    const char* FName = "C:/f1.bin";
    int x = 100;     double y = 5.988;


    ofstream out("C://f1.bin", ios::binary);
    out.write((char*)&x, sizeof(x));
    out.write((char*)&y, sizeof(y));
    out.close();
    cout << sizeof(x);

    int x1 = 0;      double y1 = 0;
    fstream in(FName, ios::binary);
    in.read((char*)&x1, sizeof(x));
    in.read((char*)&y1, sizeof(y));
    in.close();
    x1 = x1 + y1;
    cout << x1 << '\n';
    cin.get();
}
*/
// reading an entire binary file
/*#include <iostream>
#include <fstream>
using namespace std;

int main() {
    int size;
    char* memblock;

    ifstream file_in; 
    ofstream file_out("example.bin", ios::out | ios::binary);
    if (file_out.is_open())
    {
        string alpha = "gfggfhfgh53fdgdfgkf;lhkjl;gfhjkl;fgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg543fgdhfghg2h";
        int x=53354345;
        int y = sizeof(alpha);
        cout << y;
        file_out.write((char*)&y, 1);
        file_out.write((char*)&alpha, sizeof(alpha));
        y = sizeof(x);
        cout << y;
        int z = y; cout << sizeof(1);
        file_out.write((char*)&y, 1);
        file_out.write((char*)&x, sizeof(x));
        file_out.close();
        file_in.open("example.bin", ios::in | ios::binary | ios::ate);
        size = file_in.tellg();
        memblock = new char[size];
        file_in.seekg(0, ios::beg);
        cout << size << endl;
        file_in.read((char*)&size, 1);
        file_in.read((char*)&alpha, size);
        file_in.read((char*)&size, 1);
        file_in.read((char*)&x, 4);
        file_in.close();
        cout << alpha << x;
        cout << "the entire file content is in memory";

        delete[] memblock;
    }
    else cout << "Unable to open file";
    return 0;
}
*/
#include <iostream>
#include <fstream>
#include <string>
#include <list>
using namespace std;
void main()
{
    int mark;
    fstream::pos_type size = 0;
    ifstream file_in;
    ofstream file_out;
    string current_client;
    int amount_of, general;
    while (1)
    {
        file_in.open("C://Users//Kayab//Desktop//Computer science//client-server//f.bin", ios::ate | ios::binary);
        int current_size = file_in.tellg();
        if (current_size != size)
        {
            current_size = size;
            size = file_in.tellg();
            file_in.seekg(+current_size, ios::beg);
            file_in.read((char*)&current_client, 28);
            amount_of = 0, general = 0;
            for (int i = 0, multiplier = 50; i < 3; i++, multiplier /= 5) {
                file_in.read((char*)&amount_of, 4);
                general += amount_of * multiplier;
            }
            file_out.open("C://Users//Kayab//Desktop//Computer science//client-server//" + current_client + ".bin", ios::app | ios::binary);
            char true_st = 1, false_st = 0;
            if (general >= 200)
                file_out.write((char*)&true_st, 1);
            else
                file_out.write((char*)&false_st, 1);
            file_out.close();
            cout << general << " ";
        }
        file_in.close();
    }
}