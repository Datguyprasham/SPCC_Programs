###### 4. Program to remove Left Recursion from the given grammar ######

#include<bits/stdc++.h>
using namespace std;

int main(){
	char input[100], *l,*r,*temp, productions[25][50];
	int i=0,j=0,flag=0;
	printf("\n Enter the productions : ");
	scanf("%s",input);

	l = strtok(input,"->");
	r = strtok(NULL,"->");
	temp = strtok(r,"|");
	
	while(temp){
		if(temp[0]==l[0]){
			flag=1;
			sprintf(productions[i++],"%s' -> %s%s'",l,temp+1,l);
		}
		else 
			sprintf(production[i++], "%s -> %s%s'",l,temp,l);
		temp=strtok(NULL,"|");
	}
	sprintf(production[i++], "%s' -> ~",l);
	if(flag==0)
		printf("\n The given productions dont have left recursion.");
	else{
		for(int j=0;j<i;j++){
			printf("\n%s",production[j]);
		}
	}
	return 0;
}
