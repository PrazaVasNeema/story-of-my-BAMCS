#include <iostream>
using namespace std;
double F(double x) {
	return 2* x * x - 6 * x + 13;
}
double FindMin(double a, double b, double eps, double(*F)(double), double d, int N) {
	double x, y;
	int i = 0;
	while (abs(b - a) / 2 >= eps && i < N) {
		x = ((a + b - d) / 2);
		y = ((a + b + d) / 2);
		if (F(x) < F(y)) {
			a = a;
			b = y;
		}
		else {
			if (F(x) > F(y)) {
				a = x;
				b = b;
			}
			else {
				a = x;
				b = y;
			}
		}
		i++;
	}
	return abs(a + b) / 2;
}
void main() {
	double a, b, eps, d;
	int N;
	cout << "a:";
	cin >> a;
	cout << "b:";
	cin >> b;
	cout << "eps:";
	cin >> eps;
	cout << "d:";
	cin >> d;
//	eps = 0.5;
//	d = 0.2;
	cout << "N:";
	cin >> N;
	//	a = -6;
	//	b = 4;
	//	eps = 0.5;
	//	d = 0.2;
	cout << "x*: ";
	cout << FindMin(a, b, eps, F, d, N);
}