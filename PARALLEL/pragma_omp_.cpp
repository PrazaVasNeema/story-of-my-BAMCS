#include<iostream>
#include<omp.h>
#include <chrono> // ��� ������� �� std::chrono
using namespace std;
class Timer
{
private:
	// ���������� ����� ������������ ��� �������� ������� � ��������� �����
	using clock_t = std::chrono::high_resolution_clock;
	using second_t = std::chrono::duration<double, std::ratio<1> >;

	std::chrono::time_point<clock_t> m_beg;

public:
	Timer() : m_beg(clock_t::now())
	{
	}

	void reset()
	{
		m_beg = clock_t::now();
	}

	double elapsed() const
	{
		return std::chrono::duration_cast<second_t>(clock_t::now() - m_beg).count();
	}
};
int getRandomNumber(int min, int max)
{
	static const double fraction = 1.0 / (static_cast<double>(RAND_MAX) + 1.0);
	// ���������� ������������ ��������� ����� � ����� ���������
	return static_cast<int>(rand() * fraction * (max - min + 1) + min);
}
/*
int main()
{
	long int original_massiv[10000], count[10000], result_mas[10000];
	long int i, j, n = 0, N;
	cin >> N;
	for (i = 0; i < N; i++) {
		count[i] = 0;
		result_mas[i] = 0;
	}
	Timer t;
	cout << "massiv: " << endl;
	for (i = 0; i < N; i++) {
		original_massiv[i] = getRandomNumber(1,100);
	}
	for (i = 0; i < N; i++) {
		cout << original_massiv[i] << " ";
	}
	cout << endl;
#pragma omp parallel num_threads(4)
	{
#pragma omp for
		for (i = 0; i < N; i++) {
			for (j = 0; j < N; j++) {
				if (original_massiv[i] > original_massiv[j]) {
					count[i]++;
				}
			}
		}
#pragma omp for
		for (i = 0; i < N; i++) {
			while (result_mas[count[i]] != 0)count[i]++;
			result_mas[count[i]] = original_massiv[i];
		}
	}
	cout << "result :" << endl;
	for (i = 0; i < N; i++) {
		cout << result_mas[i] << " ";
	}
	cout << endl;
	std::cout << "Time taken: " << t.elapsed() << '\n';
	system("pause");
}
*/
int main()
{
	int original_massiv[10000], count[10000], result_mas[10000];
	int i, j, n = 0, N, threadsNum;
	cout << "N: ";
	cin >> N;
	cout << "\nnum of threads: ";
	cin >> threadsNum;
	cout << endl;
	for (i = 0; i < N; i++) {
		count[i] = 0;
		result_mas[i] = 0;
	}

	cout << "massiv: " << endl;
	for (i = 0; i < N; i++) {
		original_massiv[i] = getRandomNumber(1, 100);
		cout << original_massiv[i] << " ";
	}
	cout << endl;
	omp_set_num_threads(threadsNum);
	Timer t;
#pragma omp parallel for shared(original_massiv) private(i, j)
	for (i = 0; i < N; i++) {
		for (j = 0; j <N; j++) {
			if (original_massiv[i] > original_massiv[j]) {
				count[i]++;
			}
		}
	}
	for (i = 0; i < N; i++) {
		while (result_mas[count[i]] != 0)count[i]++;
		result_mas[count[i]] = original_massiv[i];
	}

	double time = t.elapsed();
	cout << "result :" << endl;
	for (i = 0; i < N; i++) {
		cout << result_mas[i] << " ";
	}
	cout << endl;
	std::cout << "Time taken: " << time << '\n';


	system("pause");
}