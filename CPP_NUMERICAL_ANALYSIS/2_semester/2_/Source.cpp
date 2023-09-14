#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
using namespace std;
double Adams(double x[1000], double h, double y[1000], double(*F)(double, double), int n) {
	y[1] = y[0] + h * F(x[0], y[0]);
	x[1] = x[0] + h;
	cout << y[1] << endl;
	for (int i = 2; i <= n; i++) {
		x[i] = x[0] + h * i;
		y[i] = y[i - 1] + h / 2 * (3 * F(x[i - 1], y[i - 1]) - F(x[i - 2], y[i - 2]));
		y[i - 2] = y[i - 1];
		y[i - 1] = y[i];
		cout << endl << y[i] << endl;
	}
	return y[n];
}
double primer1(double, double);
double primer2(double, double);
double primer3(double, double);
double primer4(double, double);
double primer5(double, double);
void main() {
	setlocale(LC_ALL, "Russian");
	int n, choice;
	double T, x[1000], h, y[1000];
	cout << "������� ����� ������� (��������������: ���, ��, ��, ��, ��, ��� - 1, 2, 3, 4, 5, 6): ";
	cin >> choice;
	cout << "������� T: ";
	cin >> T;
	cout << ("������� ���������� ��������� n: ");
	cin >> n;
	switch (choice) {
	case 1:
		x[0] = 0;
		y[0] = -1;
		h = (T - x[0]) / n;
		y[n] = Adams(x, h, y, primer1, n);
		break;
	case 2:
		x[0] = 1;
		y[0] = 0;
		h = (T - x[0]) / n;
		y[n] = Adams(x, h, y, primer2, n);
		break;
	case 3:
		x[0] = 1;
		y[0] = 2;
		h = (T - x[0]) / n;
		y[n] = Adams(x, h, y, primer3, n);
		break;
	case 4:
		x[0] = 1;
		y[0] = 1;
		h = (T - x[0]) / n;
		y[n] = Adams(x, h, y, primer4, n);
		break;
	case 5:
		x[0] = 6.34;
		y[0] = 1.8;
		h = (T - x[0]) / n;
		y[n] = Adams(x, h, y, primer5, n);
		break;
	}

	cout << y[n];
}

double primer1(double x, double y) {
	return 1 / (x + 2 * y);
}
double primer2(double x, double y) {
	return 1 + 2 * y / x;
}
double primer3(double x, double y) {
	return 2 * pow(x, 3) + 2 * y / x;
}
double primer4(double x, double y) {
	return 2 * y / x + 2 * x * sqrt(y);
}
double primer5(double x, double y) {
	return x / (x * x - 2 * y + 1);
}