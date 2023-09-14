#include <iostream>
using namespace std;
void main()
{
	int a, b, c;
	float F, x;
	cin >> x >> b >> c >> a;
	if ((x - 3 < 0) && (b - x != 0)) F = a * x * x + b; 
	else if ((x - 3 > 0) && (b + x == 0)) F = (x - a) / x;
	else F = x / (2 * c);
	cout << F << endl;
}
