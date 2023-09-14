#include <iostream>
#include <iomanip>
using namespace std;
double F(double x) {
	return 2 * x * x - 6 * x + 13;
}
double FindMin(double a, double b, double eps, double(*F)(double), int N) {
	double x, y;
	x = a + (3 - sqrt(5)) / 2 * (b - a);
	y = a + b - x;
	cout << "0:\t" << "a = " << a << "\tb = " << b << "\tx = " << x << "\ty = " << y << "\tx* = " << (a + b) / 2 << endl;
	for (int i = 1; i < N; i++) {
		if (abs(b - a) < 2 * eps) {
			break;
		}
		cout << i << ":\t";
		if (F(x) < F(y)) {
			a = a;
			b = y;
			y = x;
			x = a + b - y;
		}
		else {
			a = x;
			b = b;
			x = y;
			y = a + b - x;
		}
		cout << "a = " << a << "\tb = " << b << "\tx = " << x << "\ty = " << y << "\tx* = " << (a + b) / 2 << endl;
	}
	cout << setprecision(8) << "x*: ";
	return  (a + b) / 2;
}
void main() {
	double a, b, eps;
	int N;
	cout << "a:";
	cin >> a;
	cout << "b:";
	cin >> b;
	//	a = -6;
	//	b = 4;
	cout << "eps:";
	cin >> eps;
	//	cout << "alpha:";
	//	cin >> alpha;
	//	eps = 0.01;
	cout << "N:";
	cin >> N;

	cout << FindMin(a, b, eps, F, N);

	double x, y;
//	cout << "\nx, y : ";
//	cin >> x >> y;
//	for (int i = 1; i < N; i++) {
//		if (abs(b - a) < 2 * eps) {
//			break;
//		}
//		cout << i << ":";
//		cout << "\nF(x): " << F(x) << "\tF(y): " << F(y);
//		if (F(x) < F(y)) {
//			a = a;
//			b = y;
//			y = x;
//			x = a + b - y;
//		}
//		else {
//			a = x;
//			b = b;
//			x = y;
//			y = a + b - x;
//		}
//		cout << "\na = " << a << "\tb = " << b << "\tx = " << x << "\ty = " << y << "\tx* = " << (a + b) / 2 << endl;
//	}
//	cout << "x*: " << (a + b) / 2;
}