#include<cstdio>
#include<algorithm>
#include<cstring>
#define maxn 300000
using namespace std;
int k;
double data2[maxn];
struct node{
	double x,y;
	int id;
}data[maxn],Coefficients[maxn];
bool cmp1(node a,node b) {return a.x>b.x;}
bool cmp2(node a,node b) {return a.x<b.x;}
signed main(){
	freopen("predata.csv","r",stdin);
	while(scanf("%lf,%lf",&data[++k].x,&data[k].y)!=EOF) data[k].id=k;
	freopen("CON","r",stdin);
	sort(data+1,data+1+k,cmp1);
	for(int i=1;;i++){
		if(!data[i].x) break;
		Coefficients[data[i].id-1].x=data[i].x;
	}
	sort(data+1,data+1+k,cmp2);
	for(int i=1;;i++){
		if(!data[i].x) break;
		Coefficients[data[i].id-1].x=data[i].x;
	}
	
	
	k=0;
	freopen("data.csv","r",stdin);
	double temp;
	while(scanf("%lf",&data2[++k])!=EOF) ;
	double ans=0;
	for(int i=1;i<=k;i++){
		if(!Coefficients[i].x) continue;
		ans+=Coefficients[i].x*data2[i];
	}
	printf("%lf\n",ans);
	return 0;
}
