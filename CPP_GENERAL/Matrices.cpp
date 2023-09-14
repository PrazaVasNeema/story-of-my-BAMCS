#include <iostream>
using namespace std;
void main()
{
	int A[20][20], a[20], N, M, sum;
	cin >> M >> N;
	for (int i = 0; i < N; i++)
		for (int j = 0; j < M; j++)
			cin >> A[i][j];
	for (int i = 0; i < N; i++)
	{
		sum = 0;
		for (int j = 0; j < M; j++)
			sum += A[i][j];
		if (sum / M > 10) a[i] = sum / M;
		else a[i] = 0;
	}
	for (int i = 0; i < N; i++) cout << a[i] << endl;
	system("pause");
}
