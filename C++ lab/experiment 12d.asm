#include<iostream>
using namespace std; 
class Baseclass{
public:
int x = 5;
virtual void display()=0;
};
class Child:public Baseclass{ int y = 10;
public:
void display(){
cout<<y<<endl;
}
};
int main(){
Baseclass *a; Child b;
a = &b;
a->display(); return 0;
}
