#include <iostream>
using namespace std;
void main()
{
	int n, m, f, t = 5, p = 1, i, multi = 1, sum = 0;
	float y;
	cin >> n >> m >> f;
	for (i = 1; i <= n; i++)
	{
		p *= i;
		multi *= i * i + 4 * p;
	}
	p = 1;
	for (i = 1; i <= m; i++)
	{
		t *= 5; p *= i;
		sum += t + p;
	}
	y = 1.0 / multi + f * sum;
	cout << y << endl;
}
