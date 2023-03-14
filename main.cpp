#include <iostream>

using namespace std;

int main()
{
    int n = 6 , k = 0;
    int A[6] = {810, 100, 560, 380, 600, 87};
    int B[6] = {800, 555, 817, 124, 890, 456};
    int C[6] = {345, 200, 700, 180, 600, 490};
    int D[6];
    int S1 = 0, S2 = 0, S3 = 0, i;
    double MA, MB, MC;

    for(i = 0; i < n; i++){
     S1 = S1 + A[i];
    }
    MA = S1/n;

    for(i = 0; i < n; i++){
     S2 = S2 + B[i];
    }
    MB = S2/n;

    for(i = 0; i < n; i++){
     S3 = S3 + C[i];
    }
    MC = S3/n;

    cout << "Media A: " << MA << endl;
    cout << "Media B: " << MB << endl;
    cout << "Media C: " << MC << endl;

    if(MA < MB && MA < MC){
        for(i = 0; i < n; i++){
            if(MA < A[i]){
                D[k] = A[i];
                k++;
            }
            if(MA < B[i]){
                D[k] = B[i];
                k++;
            }
            if(MA < C[i]){
                D[k] = C[i];
                k++;
            }
        }
    }

    if(MB < MA && MB < MC){
        for(i = 0; i < n; i++){
            if(MB < A[i]){
                D[k] = A[i];
                k++;
            }
            if(MB < B[i]){
                D[k] = B[i];
                k++;
            }
            if(MB < C[i]){
                D[k] = C[i];
                k++;
            }
        }
    }

    if(MC < MB && MC < MA){
        for(i = 0; i < n; i++){
            if(MC < A[i]){
                D[k] = A[i];
                k++;
            }
            if(MC < B[i]){
                D[k] = B[i];
                k++;
            }
            if(MC < C[i]){
                D[k] = C[i];
                k++;
            }
        }
    }
    cout << "" << endl;
    for(i = 0; i < k; i++){
        cout << D[i] << " ";
    }

    return 0;
}
