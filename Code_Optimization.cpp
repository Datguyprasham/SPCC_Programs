######  10. Program to develop an Optimized Code.   ######

#include<bits/stdc++.h>
using namespace std;

int main(){
    int n;
    set<string>code;
    
    cout<<"\n Enter number of Instructions: ";
    cin>>n;
    
    cout<<"\n Enter Instructions \n";  //
    for(int i=0;i<n;i++){
        string s1,s2,s3;
        cin>>s1>>s2>>s3;
        
        code.insert(s3);
    }
    
    cout<<"\n Optimised Code \n";
    int i=1;
    for(auto s:code){
        cout<<"t"<<i<<" = "<<s<<'\n';
        i++;
    }
}
