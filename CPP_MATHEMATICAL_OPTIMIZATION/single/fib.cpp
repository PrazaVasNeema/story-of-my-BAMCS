#include <iostream>
using namespace std;
double F(double x) {
	return 2 * x * x - 6 * x + 13;
}
double FindMin(double a, double b, double eps, double(*F)(double), double alpha, int N, double fib[1000]) {
	double x, y;
	x = a + fib[N - 2] / fib[N] * (b - a);
//	y = a + fib[N - 1] / fib[N] * (b - a);
	y = a + b - x;
	for (int i = 1; i < N - 1; i++)	 {
		if (abs(b - a) < 2 * eps) {
			break;
		}
		if (F(x) < F(y)) {
			a = a;
			b = y;
			y = x;
//			x = a + fib[N - i - 2] / fib[N - i] * (b - a);
			x = a + b - y;
		}
		else {
			a = x;
			b = b;
			x = y;
//			y = a + fib[N - i - 1] / fib[N - i] * (b - a);
			y = a + b - x;
		}
	}
	x = x;
	y = x + alpha;
	if (F(x) < F(y))
		return  (a + y) / 2;
	else
		return  (x + b) / 2;
}
void main() {
	double a, b, eps, alpha, fib[1000];
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
//	eps = 0.1;
	alpha = eps / 100.0;
	N = 1;
	fib[0] = 1;
	fib[1] = 1;
	while (fib[N] <= (b - a) / (2 * eps)) {
		N++;
		fib[N] = fib[N - 1] + fib[N - 2];
	}

	cout << "x*: ";
	cout << FindMin(a, b, eps, F, alpha, N, fib);
}