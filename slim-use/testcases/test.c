#include <stdio.h>
// int p(int x) {
//     int result;
//     if (x > 0) {
//         result = x * 2;
//     } else if(x == 0) {
// 		result = x / 3;
// 	} else {
//         result = x + 1;
//     }

//     return result;
// }

int main() {
	int a,b,c;
	scanf("%d %d %d",&a,&b,&c);
	if(a > b) {
		a = a + 1;
	} else {
		a = a - 1;
		b = b + c;
	}
	while(a <= b) {
		a++;
	}
	return a + b + c;
}
