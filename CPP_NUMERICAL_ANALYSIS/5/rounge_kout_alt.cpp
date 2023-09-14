#include <iostream>
#include <fstream>
#include <iomanip>
using namespace std;
void print(double[20][20], int);
void main() {
	setlocale(LC_ALL, "Russian");
	int N, count, temp, counter = -1;
	double a[20][20], y[20], y_norma = 0, x[3][20], lambda_vect[2][20], lambda[3], lambda_etk, eps;
	bool check = 1;
	lambda[1] = 0;
	lambda[2] = 0;
	string num;
	cout << "Введите номер примера: ";
	cin >> num;
	ifstream file("C://Limbo//Purgatory//To_wf//0//matrix_" + num + ".txt");
	file >> N;
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++) {
			file >> a[i][j];
		}
	}
	file >> temp;
	cout << "Максимальное собственное значение примера: " << temp << "\nСобственные вектор максимального собственного значения примера: ";
	for (int i = 0; i < N; i++) {
		file >> temp;
		cout << temp << "\t";
	}
	cout << endl;
	print(a, N);
	file.close();

	cout << "Введите эпсилон: ";
	cin >> eps;
	cout << "Введите первое приближение (к примеру, 1 2 1): ";
	for (int i = 0; i < N; i++) {
		cin >> y[i];
		y_norma += y[i] * y[i];
	}
	y_norma = sqrt(y_norma);
	for (int i = 0; i < N; i++)
		x[2][i] = y[i] / y_norma;
	for (int i = 0; i < N; i++)
		lambda_vect[1][i] = 0;

	// цикл степенного метода
	do {
		count = 0;
		lambda[0] = lambda[1];
		lambda[1] = lambda[2];
		lambda[2] = 0;
		y_norma = 0;
		for (int i = 0; i < N; i++) {
			lambda_vect[0][i] = lambda_vect[1][i];
			x[0][i] = x[1][i];
			x[1][i] = x[2][i];
		}
		for (int i = 0; i < N; i++) {
			y[i] = 0;
			for (int j = 0; j < N; j++) {
				y[i] += a[i][j] * x[0][j];
			}
			y_norma += y[i] * y[i];
		}
		y_norma = sqrt(y_norma);
		for (int i = 0; i < N; i++)
			x[2][i] = y[i] / y_norma;

		for (int i = 0; i < N; i++) {
			if (abs(x[1][i]) < 0.1) {
				lambda_vect[1][i] = 0;
				continue;
			}
			lambda_vect[1][i] = y[i] / x[1][i];
			count++;
		}
		for (int i = 0; i < N; i++) {
			lambda[2] += lambda_vect[1][i];
		}
		lambda[2] /= count;
		for (int i = 0; i < N; i++) {
			if (lambda_vect[0][i] == 0 || lambda_vect[1][i] == 0)
				continue;
			if (abs(lambda_vect[1][i] - lambda_vect[0][i]) <= eps) {
				check = 0;
				break;
			}
		}
		// применяем процесс Эйткена для собственного вектора (каждые три итерации)
		if (counter % 3 == 0 && counter != 0) {
			for (int i = 0; i < N; i++)
				x[2][i] = x[0][i] - pow(x[1][i] - x[0][i], 2) / (x[2][i] - 2 * x[1][i] + x[0][i]);
		}
		counter++;
	} while (check);
	
	// применяем процесс Эйткена для собственного значения
	lambda_etk = lambda[0] - pow(lambda[1] - lambda[0], 2) / (lambda[2] - 2 * lambda[1] + lambda[0]);

	cout << setprecision(16); // задаем количество цифр после запятой

	cout << "\nМаксимальное собственное значение: " << lambda_etk;
	cout << "\nВектор максимального собственного значения: ";
	for (int i = 0; i < N; i++) {
		cout << abs(x[2][i]) << '\t';
	}
}

void print(double a[20][20], int N) {
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++)
			cout << a[i][j] << '\t';
		cout << endl;
	}
	cout << endl;
}