#include<iostream>
#include<string> 
using namespace std;
void display(int i){
cout<<"Integer value is:"<<i<<endl;
}
void display(double f){
cout<<"Float value is:"<<f<<endl;
}
void display(string s){
cout<<"Character value :"<<s<<endl;
}
int main(){
display(10); display(12.34); display("ABCD"); return 0;
}
