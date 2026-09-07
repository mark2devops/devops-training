#include <iostream>
#include <ctime>
using namespace std;

int main() {
	cout << "Hello from C++ running on Linux!" << endl;
	cout << "My user is:" << getenv("USER") << endl;

	time_t now = time(0);
	cout << "Build time : " << ctime(&now); 

	return 0;
}
