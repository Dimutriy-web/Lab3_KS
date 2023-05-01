#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                swap(arr[j], arr[j + 1]);
            }
        }
    }
}

int main() {
    srand(time(NULL));
    for (int i = 0; i < 1000000; i++) {
        int arr[100];
        for (int j = 0; j < 100; j++) {
            arr[j] = rand() % 100 + 1;
        }
        int n = sizeof(arr) / sizeof(arr[0]);
        for (int j = 0; j < 100; j++) {
            bubbleSort(arr, n);
        }
    }
    cout << "OK" << endl;
    return 0;
}